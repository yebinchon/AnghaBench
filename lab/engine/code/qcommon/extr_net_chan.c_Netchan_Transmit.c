
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int send_buf ;
struct TYPE_11__ {int unsentLength; size_t sock; int incomingSequence; scalar_t__ outgoingSequence; int lastSentSize; int lastSentTime; int remoteAddress; int challenge; int compat; int unsentBuffer; int unsentFragments; scalar_t__ unsentFragmentStart; } ;
typedef TYPE_1__ netchan_t ;
struct TYPE_12__ {int cursize; int data; } ;
typedef TYPE_2__ msg_t ;
typedef int byte ;
struct TYPE_14__ {int integer; } ;
struct TYPE_13__ {scalar_t__ integer; } ;


 int Com_Error (int ,char*,int) ;
 int Com_Memcpy (int ,int const*,int) ;
 int Com_Printf (char*,int ,int ,scalar_t__,int ) ;
 int ERR_DROP ;
 int FRAGMENT_SIZE ;
 int MAX_MSGLEN ;
 int MAX_PACKETLEN ;
 int MSG_InitOOB (TYPE_2__*,int *,int) ;
 int MSG_WriteData (TYPE_2__*,int const*,int) ;
 int MSG_WriteLong (TYPE_2__*,scalar_t__) ;
 int MSG_WriteShort (TYPE_2__*,int ) ;
 scalar_t__ NETCHAN_GENCHECKSUM (int ,scalar_t__) ;
 int NET_SendPacket (size_t,int ,int ,int ) ;
 size_t NS_CLIENT ;
 int Netchan_TransmitNextFragment (TYPE_1__*) ;
 int Sys_Milliseconds () ;
 int * netsrcString ;
 TYPE_4__* qport ;
 int qtrue ;
 TYPE_3__* showpackets ;

void Netchan_Transmit( netchan_t *chan, int length, const byte *data ) {
 msg_t send;
 byte send_buf[MAX_PACKETLEN];

 if ( length > MAX_MSGLEN ) {
  Com_Error( ERR_DROP, "Netchan_Transmit: length = %i", length );
 }
 chan->unsentFragmentStart = 0;


 if ( length >= FRAGMENT_SIZE ) {
  chan->unsentFragments = qtrue;
  chan->unsentLength = length;
  Com_Memcpy( chan->unsentBuffer, data, length );


  Netchan_TransmitNextFragment( chan );

  return;
 }


 MSG_InitOOB (&send, send_buf, sizeof(send_buf));

 MSG_WriteLong( &send, chan->outgoingSequence );


 if(chan->sock == NS_CLIENT)
  MSG_WriteShort(&send, qport->integer);




  MSG_WriteLong(&send, NETCHAN_GENCHECKSUM(chan->challenge, chan->outgoingSequence));

 chan->outgoingSequence++;

 MSG_WriteData( &send, data, length );


 NET_SendPacket( chan->sock, send.cursize, send.data, chan->remoteAddress );


 chan->lastSentTime = Sys_Milliseconds();
 chan->lastSentSize = send.cursize;

 if ( showpackets->integer ) {
  Com_Printf( "%s send %4i : s=%i ack=%i\n"
   , netsrcString[ chan->sock ]
   , send.cursize
   , chan->outgoingSequence - 1
   , chan->incomingSequence );
 }
}

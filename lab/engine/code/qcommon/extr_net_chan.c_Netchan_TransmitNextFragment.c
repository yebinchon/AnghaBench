
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int send_buf ;
struct TYPE_10__ {int outgoingSequence; size_t sock; scalar_t__ unsentFragmentStart; scalar_t__ unsentLength; int unsentBuffer; int unsentFragments; int lastSentSize; int lastSentTime; int remoteAddress; int challenge; int compat; } ;
typedef TYPE_1__ netchan_t ;
struct TYPE_11__ {int cursize; int data; } ;
typedef TYPE_2__ msg_t ;
typedef int byte ;
struct TYPE_13__ {int integer; } ;
struct TYPE_12__ {scalar_t__ integer; } ;


 int Com_Printf (char*,int ,int ,int,int,int) ;
 int FRAGMENT_BIT ;
 int FRAGMENT_SIZE ;
 int MAX_PACKETLEN ;
 int MSG_InitOOB (TYPE_2__*,int *,int) ;
 int MSG_WriteData (TYPE_2__*,int,int) ;
 int MSG_WriteLong (TYPE_2__*,int) ;
 int MSG_WriteShort (TYPE_2__*,int) ;
 int NETCHAN_GENCHECKSUM (int ,int) ;
 int NET_SendPacket (size_t,int ,int ,int ) ;
 size_t NS_CLIENT ;
 int Sys_Milliseconds () ;
 int * netsrcString ;
 int qfalse ;
 TYPE_4__* qport ;
 TYPE_3__* showpackets ;

void Netchan_TransmitNextFragment( netchan_t *chan ) {
 msg_t send;
 byte send_buf[MAX_PACKETLEN];
 int fragmentLength;
 int outgoingSequence;


 MSG_InitOOB (&send, send_buf, sizeof(send_buf));

 outgoingSequence = chan->outgoingSequence | FRAGMENT_BIT;
 MSG_WriteLong(&send, outgoingSequence);


 if ( chan->sock == NS_CLIENT ) {
  MSG_WriteShort( &send, qport->integer );
 }




  MSG_WriteLong(&send, NETCHAN_GENCHECKSUM(chan->challenge, chan->outgoingSequence));


 fragmentLength = FRAGMENT_SIZE;
 if ( chan->unsentFragmentStart + fragmentLength > chan->unsentLength ) {
  fragmentLength = chan->unsentLength - chan->unsentFragmentStart;
 }

 MSG_WriteShort( &send, chan->unsentFragmentStart );
 MSG_WriteShort( &send, fragmentLength );
 MSG_WriteData( &send, chan->unsentBuffer + chan->unsentFragmentStart, fragmentLength );


 NET_SendPacket(chan->sock, send.cursize, send.data, chan->remoteAddress);


 chan->lastSentTime = Sys_Milliseconds();
 chan->lastSentSize = send.cursize;

 if ( showpackets->integer ) {
  Com_Printf ("%s send %4i : s=%i fragment=%i,%i\n"
   , netsrcString[ chan->sock ]
   , send.cursize
   , chan->outgoingSequence
   , chan->unsentFragmentStart, fragmentLength);
 }

 chan->unsentFragmentStart += fragmentLength;





 if ( chan->unsentFragmentStart == chan->unsentLength && fragmentLength != FRAGMENT_SIZE ) {
  chan->outgoingSequence++;
  chan->unsentFragments = qfalse;
 }
}

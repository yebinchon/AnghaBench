
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_8__ {long cursize; int readcount; int bit; int* data; int oob; } ;
typedef TYPE_2__ msg_t ;
struct TYPE_7__ {int outgoingSequence; } ;
struct TYPE_9__ {int challenge; TYPE_1__ netchan; } ;
typedef TYPE_3__ client_t ;
typedef int byte ;


 int MSG_ReadLong (TYPE_2__*) ;
 long SV_ENCODE_START ;
 int qfalse ;

__attribute__((used)) static void SV_Netchan_Encode(client_t *client, msg_t *msg, const char *clientCommandString)
{
 long i, index;
 byte key, *string;
 int srdc, sbit;
 qboolean soob;

 if ( msg->cursize < SV_ENCODE_START ) {
  return;
 }

 srdc = msg->readcount;
 sbit = msg->bit;
 soob = msg->oob;

 msg->bit = 0;
 msg->readcount = 0;
 msg->oob = qfalse;

                             MSG_ReadLong(msg);

 msg->oob = soob;
 msg->bit = sbit;
 msg->readcount = srdc;

 string = (byte *) clientCommandString;
 index = 0;

 key = client->challenge ^ client->netchan.outgoingSequence;
 for (i = SV_ENCODE_START; i < msg->cursize; i++) {

  if (!string[index])
   index = 0;
  if (string[index] > 127 || string[index] == '%') {
   key ^= '.' << (i & 1);
  }
  else {
   key ^= string[index] << (i & 1);
  }
  index++;

  *(msg->data + i) = *(msg->data + i) ^ key;
 }
}

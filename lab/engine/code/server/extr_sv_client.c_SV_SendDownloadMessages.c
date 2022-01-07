
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int msg_t ;
typedef int msgBuffer ;
struct TYPE_6__ {int lastClientCommand; scalar_t__* downloadName; scalar_t__ state; } ;
typedef TYPE_1__ client_t ;
typedef int byte ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {TYPE_1__* clients; } ;


 int MAX_MSGLEN ;
 int MSG_Init (int *,int *,int) ;
 int MSG_WriteByte (int *,int ) ;
 int MSG_WriteLong (int *,int ) ;
 int SV_Netchan_Transmit (TYPE_1__*,int *) ;
 int SV_WriteDownloadToClient (TYPE_1__*,int *) ;
 TYPE_3__* sv_maxclients ;
 int svc_EOF ;
 TYPE_2__ svs ;

int SV_SendDownloadMessages(void)
{
 int i, numDLs = 0, retval;
 client_t *cl;
 msg_t msg;
 byte msgBuffer[MAX_MSGLEN];

 for(i=0; i < sv_maxclients->integer; i++)
 {
  cl = &svs.clients[i];

  if(cl->state && *cl->downloadName)
  {
   MSG_Init(&msg, msgBuffer, sizeof(msgBuffer));
   MSG_WriteLong(&msg, cl->lastClientCommand);

   retval = SV_WriteDownloadToClient(cl, &msg);

   if(retval)
   {
    MSG_WriteByte(&msg, svc_EOF);
    SV_Netchan_Transmit(cl, &msg);
    numDLs += retval;
   }
  }
 }

 return numDLs;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int member_0; } ;
typedef TYPE_1__ netadr_t ;
typedef int msg_t ;
typedef int fd_set ;
typedef int byte ;
typedef int bufData ;
struct TYPE_9__ {scalar_t__ integer; } ;
struct TYPE_8__ {float value; } ;


 int CL_PacketEvent (TYPE_1__,int *) ;
 int Com_RunAndTimeServerPacket (TYPE_1__*,int *) ;
 int MAX_MSGLEN ;
 int MSG_Init (int *,int *,int) ;
 scalar_t__ NET_GetPacket (TYPE_1__*,int *,int *) ;
 scalar_t__ RAND_MAX ;
 TYPE_3__* com_sv_running ;
 TYPE_2__* net_dropsim ;
 int rand () ;

void NET_Event(fd_set *fdr)
{
 byte bufData[MAX_MSGLEN + 1];
 netadr_t from = {0};
 msg_t netmsg;

 while(1)
 {
  MSG_Init(&netmsg, bufData, sizeof(bufData));

  if(NET_GetPacket(&from, &netmsg, fdr))
  {
   if(net_dropsim->value > 0.0f && net_dropsim->value <= 100.0f)
   {

    if(rand() < (int) (((double) RAND_MAX) / 100.0 * (double) net_dropsim->value))
     continue;
   }

   if(com_sv_running->integer)
    Com_RunAndTimeServerPacket(&from, &netmsg);
   else
    CL_PacketEvent(from, &netmsg);
  }
  else
   break;
 }
}

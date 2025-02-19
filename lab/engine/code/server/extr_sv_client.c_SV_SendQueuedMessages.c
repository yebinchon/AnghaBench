
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ state; } ;
typedef TYPE_1__ client_t ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {TYPE_1__* clients; } ;


 int SV_Netchan_TransmitNextFragment (TYPE_1__*) ;
 int SV_RateMsec (TYPE_1__*) ;
 TYPE_3__* sv_maxclients ;
 TYPE_2__ svs ;

int SV_SendQueuedMessages(void)
{
 int i, retval = -1, nextFragT;
 client_t *cl;

 for(i=0; i < sv_maxclients->integer; i++)
 {
  cl = &svs.clients[i];

  if(cl->state)
  {
   nextFragT = SV_RateMsec(cl);

   if(!nextFragT)
    nextFragT = SV_Netchan_TransmitNextFragment(cl);

   if(nextFragT >= 0 && (retval == -1 || retval > nextFragT))
    retval = nextFragT;
  }
 }

 return retval;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ port; } ;
struct TYPE_6__ {int time; int start; TYPE_1__ adr; } ;
typedef TYPE_2__ ping_t ;


 int INT_MIN ;
 int MAX_PINGREQUESTS ;
 int Sys_Milliseconds () ;
 TYPE_2__* cl_pinglist ;

ping_t* CL_GetFreePing( void )
{
 ping_t* pingptr;
 ping_t* best;
 int oldest;
 int i;
 int time;

 pingptr = cl_pinglist;
 for (i=0; i<MAX_PINGREQUESTS; i++, pingptr++ )
 {

  if (pingptr->adr.port)
  {
   if (!pingptr->time)
   {
    if (Sys_Milliseconds() - pingptr->start < 500)
    {

     continue;
    }
   }
   else if (pingptr->time < 500)
   {

    continue;
   }
  }


  pingptr->adr.port = 0;
  return (pingptr);
 }


 pingptr = cl_pinglist;
 best = cl_pinglist;
 oldest = INT_MIN;
 for (i=0; i<MAX_PINGREQUESTS; i++, pingptr++ )
 {

  time = Sys_Milliseconds() - pingptr->start;
  if (time > oldest)
  {
   oldest = time;
   best = pingptr;
  }
 }

 return (best);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ port; } ;
struct TYPE_5__ {TYPE_1__ adr; } ;
typedef TYPE_2__ ping_t ;


 int MAX_PINGREQUESTS ;
 TYPE_2__* cl_pinglist ;

int CL_GetPingQueueCount( void )
{
 int i;
 int count;
 ping_t* pingptr;

 count = 0;
 pingptr = cl_pinglist;

 for (i=0; i<MAX_PINGREQUESTS; i++, pingptr++ ) {
  if (pingptr->adr.port) {
   count++;
  }
 }

 return (count);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ port; } ;
struct TYPE_4__ {TYPE_1__ adr; } ;


 int MAX_PINGREQUESTS ;
 TYPE_2__* cl_pinglist ;

void CL_ClearPing( int n )
{
 if (n < 0 || n >= MAX_PINGREQUESTS)
  return;

 cl_pinglist[n].adr.port = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ active; } ;


 int aoe_flush_iocq_by_index (int) ;
 TYPE_1__* kts ;
 int ncpus ;

void
aoe_flush_iocq(void)
{
 int i;

 for (i = 0; i < ncpus; i++) {
  if (kts[i].active)
   aoe_flush_iocq_by_index(i);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lbr_exclusive; scalar_t__ lbr_pt_coexist; } ;


 int active_events ;
 int atomic_dec (int *) ;
 unsigned int x86_lbr_exclusive_pt ;
 TYPE_1__ x86_pmu ;

void x86_del_exclusive(unsigned int what)
{
 if (x86_pmu.lbr_pt_coexist && what == x86_lbr_exclusive_pt)
  return;

 atomic_dec(&x86_pmu.lbr_exclusive[what]);
 atomic_dec(&active_events);
}

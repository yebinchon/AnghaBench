
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lbr_exclusive; scalar_t__ lbr_pt_coexist; } ;


 int ARRAY_SIZE (int *) ;
 int EBUSY ;
 int active_events ;
 int atomic_inc (int *) ;
 int atomic_inc_not_zero (int *) ;
 scalar_t__ atomic_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pmc_reserve_mutex ;
 unsigned int x86_lbr_exclusive_pt ;
 TYPE_1__ x86_pmu ;

int x86_add_exclusive(unsigned int what)
{
 int i;





 if (x86_pmu.lbr_pt_coexist && what == x86_lbr_exclusive_pt)
  return 0;

 if (!atomic_inc_not_zero(&x86_pmu.lbr_exclusive[what])) {
  mutex_lock(&pmc_reserve_mutex);
  for (i = 0; i < ARRAY_SIZE(x86_pmu.lbr_exclusive); i++) {
   if (i != what && atomic_read(&x86_pmu.lbr_exclusive[i]))
    goto fail_unlock;
  }
  atomic_inc(&x86_pmu.lbr_exclusive[what]);
  mutex_unlock(&pmc_reserve_mutex);
 }

 atomic_inc(&active_events);
 return 0;

fail_unlock:
 mutex_unlock(&pmc_reserve_mutex);
 return -EBUSY;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ irq; } ;


 int free_irq (scalar_t__,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pmc_reserve_mutex ;
 TYPE_1__* riscv_pmu ;

void release_pmc_hardware(void)
{
 mutex_lock(&pmc_reserve_mutex);
 if (riscv_pmu->irq >= 0)
  free_irq(riscv_pmu->irq, ((void*)0));
 mutex_unlock(&pmc_reserve_mutex);
}

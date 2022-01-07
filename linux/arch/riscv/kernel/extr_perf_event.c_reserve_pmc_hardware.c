
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ irq; scalar_t__ handle_irq; } ;


 int IRQF_PERCPU ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pmc_reserve_mutex ;
 int request_irq (scalar_t__,scalar_t__,int ,char*,int *) ;
 TYPE_1__* riscv_pmu ;

__attribute__((used)) static int reserve_pmc_hardware(void)
{
 int err = 0;

 mutex_lock(&pmc_reserve_mutex);
 if (riscv_pmu->irq >= 0 && riscv_pmu->handle_irq) {
  err = request_irq(riscv_pmu->irq, riscv_pmu->handle_irq,
      IRQF_PERCPU, "riscv-base-perf", ((void*)0));
 }
 mutex_unlock(&pmc_reserve_mutex);

 return err;
}

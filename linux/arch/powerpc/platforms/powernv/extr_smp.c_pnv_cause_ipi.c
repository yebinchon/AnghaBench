
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ doorbell_try_core_ipi (int) ;
 int ic_cause_ipi (int) ;

__attribute__((used)) static void pnv_cause_ipi(int cpu)
{
 if (doorbell_try_core_ipi(cpu))
  return;

 ic_cause_ipi(cpu);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 scalar_t__ atomic_dec_return (int *) ;
 int release_pmc_hardware () ;
 int riscv_active_events ;

__attribute__((used)) static void riscv_event_destroy(struct perf_event *event)
{
 if (atomic_dec_return(&riscv_active_events) == 0)
  release_pmc_hardware();
}

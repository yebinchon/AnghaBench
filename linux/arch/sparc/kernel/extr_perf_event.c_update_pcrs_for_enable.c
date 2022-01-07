
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpu_hw_events {scalar_t__ n_added; } ;
struct TYPE_2__ {int num_pcrs; } ;


 int calculate_multiple_pcrs (struct cpu_hw_events*) ;
 int calculate_single_pcr (struct cpu_hw_events*) ;
 int read_in_all_counters (struct cpu_hw_events*) ;
 TYPE_1__* sparc_pmu ;

__attribute__((used)) static void update_pcrs_for_enable(struct cpu_hw_events *cpuc)
{
 if (cpuc->n_added)
  read_in_all_counters(cpuc);

 if (sparc_pmu->num_pcrs == 1) {
  calculate_single_pcr(cpuc);
 } else {
  calculate_multiple_pcrs(cpuc);
 }
}

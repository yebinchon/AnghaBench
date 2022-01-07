
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_hw_events {int dummy; } ;


 int intel_set_tfa (struct cpu_hw_events*,int) ;

__attribute__((used)) static void intel_tfa_commit_scheduling(struct cpu_hw_events *cpuc, int idx, int cntr)
{



 if (cntr == 3)
  intel_set_tfa(cpuc, 1);
}

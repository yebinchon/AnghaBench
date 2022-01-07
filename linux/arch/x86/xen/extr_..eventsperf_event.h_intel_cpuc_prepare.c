
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_hw_events {int dummy; } ;



__attribute__((used)) static inline int intel_cpuc_prepare(struct cpu_hw_events *cpuc, int cpu)
{
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_hw_events {int dummy; } ;


 int intel_cpuc_finish (struct cpu_hw_events*) ;
 int kfree (struct cpu_hw_events*) ;

__attribute__((used)) static void free_fake_cpuc(struct cpu_hw_events *cpuc)
{
 intel_cpuc_finish(cpuc);
 kfree(cpuc);
}

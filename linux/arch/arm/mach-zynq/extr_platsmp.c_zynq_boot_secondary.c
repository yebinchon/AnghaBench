
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int __pa_symbol (int ) ;
 int secondary_startup_arm ;
 int zynq_cpun_start (int ,unsigned int) ;

__attribute__((used)) static int zynq_boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 return zynq_cpun_start(__pa_symbol(secondary_startup_arm), cpu);
}

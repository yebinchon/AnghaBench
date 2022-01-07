
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct task_struct {int dummy; } ;
typedef scalar_t__ phys_addr_t ;


 int EINVAL ;
 scalar_t__ __pa_symbol (int ) ;
 int alpine_cpu_wakeup (int ,scalar_t__) ;
 int cpu_logical_map (unsigned int) ;
 int pr_err (char*,scalar_t__*) ;
 int secondary_startup ;

__attribute__((used)) static int alpine_boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 phys_addr_t addr;

 addr = __pa_symbol(secondary_startup);

 if (addr > (phys_addr_t)(uint32_t)(-1)) {
  pr_err("FAIL: resume address over 32bit (%pa)", &addr);
  return -EINVAL;
 }

 return alpine_cpu_wakeup(cpu_logical_map(cpu), (uint32_t)addr);
}

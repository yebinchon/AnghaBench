
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int (* cpu_on ) (int ,int ) ;} ;


 int ENODEV ;
 int cpu_logical_map (unsigned int) ;
 TYPE_1__ psci_ops ;
 int secondary_startup ;
 int stub1 (int ,int ) ;
 int virt_to_idmap (int *) ;

__attribute__((used)) static int psci_boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 if (psci_ops.cpu_on)
  return psci_ops.cpu_on(cpu_logical_map(cpu),
     virt_to_idmap(&secondary_startup));
 return -ENODEV;
}

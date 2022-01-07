
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_sys_reg_target_table {int dummy; } ;


 struct kvm_sys_reg_target_table** target_tables ;

void kvm_register_target_sys_reg_table(unsigned int target,
           struct kvm_sys_reg_target_table *table)
{
 target_tables[target] = table;
}

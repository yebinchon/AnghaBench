
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sys_reg_desc {int dummy; } ;
struct TYPE_4__ {size_t num; struct sys_reg_desc const* table; } ;
struct TYPE_3__ {size_t num; struct sys_reg_desc const* table; } ;
struct kvm_sys_reg_target_table {TYPE_2__ table32; TYPE_1__ table64; } ;


 struct kvm_sys_reg_target_table** target_tables ;

__attribute__((used)) static const struct sys_reg_desc *get_target_table(unsigned target,
         bool mode_is_64,
         size_t *num)
{
 struct kvm_sys_reg_target_table *table;

 table = target_tables[target];
 if (mode_is_64) {
  *num = table->table64.num;
  return table->table64.table;
 } else {
  *num = table->table32.num;
  return table->table32.table;
 }
}

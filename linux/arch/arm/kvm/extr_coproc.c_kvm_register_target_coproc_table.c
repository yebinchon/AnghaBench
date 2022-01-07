
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_coproc_target_table {size_t target; int num; int table; } ;


 int BUG_ON (int ) ;
 int check_reg_table (int ,int ) ;
 struct kvm_coproc_target_table** target_tables ;

void kvm_register_target_coproc_table(struct kvm_coproc_target_table *table)
{
 BUG_ON(check_reg_table(table->table, table->num));
 target_tables[table->target] = table;
}

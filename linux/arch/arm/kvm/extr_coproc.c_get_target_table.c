
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_coproc_target_table {size_t num; struct coproc_reg const* table; } ;
struct coproc_reg {int dummy; } ;


 struct kvm_coproc_target_table** target_tables ;

__attribute__((used)) static const struct coproc_reg *get_target_table(unsigned target, size_t *num)
{
 struct kvm_coproc_target_table *table;

 table = target_tables[target];
 *num = table->num;
 return table->table;
}

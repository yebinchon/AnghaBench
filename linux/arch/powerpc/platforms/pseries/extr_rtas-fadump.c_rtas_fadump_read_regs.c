
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_fadump_reg_entry {int reg_value; int reg_id; } ;
struct pt_regs {int dummy; } ;


 scalar_t__ be64_to_cpu (int ) ;
 scalar_t__ fadump_str_to_u64 (char*) ;
 int memset (struct pt_regs*,int ,int) ;
 int rtas_fadump_set_regval (struct pt_regs*,scalar_t__,scalar_t__) ;

__attribute__((used)) static struct rtas_fadump_reg_entry*
rtas_fadump_read_regs(struct rtas_fadump_reg_entry *reg_entry,
        struct pt_regs *regs)
{
 memset(regs, 0, sizeof(struct pt_regs));

 while (be64_to_cpu(reg_entry->reg_id) != fadump_str_to_u64("CPUEND")) {
  rtas_fadump_set_regval(regs, be64_to_cpu(reg_entry->reg_id),
           be64_to_cpu(reg_entry->reg_value));
  reg_entry++;
 }
 reg_entry++;
 return reg_entry;
}

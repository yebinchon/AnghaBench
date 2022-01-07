
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pt_regs {int dummy; } ;
struct hdat_fadump_reg_entry {int reg_num; int reg_type; int reg_val; } ;


 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int memset (struct pt_regs*,int ,int) ;
 int opal_fadump_set_regval_regnum (struct pt_regs*,int ,int ,int ) ;

__attribute__((used)) static inline void opal_fadump_read_regs(char *bufp, unsigned int regs_cnt,
      unsigned int reg_entry_size,
      bool cpu_endian,
      struct pt_regs *regs)
{
 struct hdat_fadump_reg_entry *reg_entry;
 u64 val;
 int i;

 memset(regs, 0, sizeof(struct pt_regs));

 for (i = 0; i < regs_cnt; i++, bufp += reg_entry_size) {
  reg_entry = (struct hdat_fadump_reg_entry *)bufp;
  val = (cpu_endian ? be64_to_cpu(reg_entry->reg_val) :
         reg_entry->reg_val);
  opal_fadump_set_regval_regnum(regs,
           be32_to_cpu(reg_entry->reg_type),
           be32_to_cpu(reg_entry->reg_num),
           val);
 }
}

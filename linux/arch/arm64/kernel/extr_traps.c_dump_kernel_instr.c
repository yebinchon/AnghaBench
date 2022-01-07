
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int dummy; } ;


 unsigned int aarch64_insn_read (int *,unsigned int*) ;
 unsigned long instruction_pointer (struct pt_regs*) ;
 int printk (char*,char const*,char*) ;
 int sprintf (char*,char*,...) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static void dump_kernel_instr(const char *lvl, struct pt_regs *regs)
{
 unsigned long addr = instruction_pointer(regs);
 char str[sizeof("00000000 ") * 5 + 2 + 1], *p = str;
 int i;

 if (user_mode(regs))
  return;

 for (i = -4; i < 1; i++) {
  unsigned int val, bad;

  bad = aarch64_insn_read(&((u32 *)addr)[i], &val);

  if (!bad)
   p += sprintf(p, i == 0 ? "(%08x) " : "%08x ", val);
  else {
   p += sprintf(p, "bad PC value");
   break;
  }
 }

 printk("%sCode: %s\n", lvl, str);
}

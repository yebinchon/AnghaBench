
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pt_regs {int dummy; } ;


 unsigned int get_user (unsigned int,int *) ;
 unsigned long instruction_pointer (struct pt_regs*) ;
 int printk (char*,char const*,char*) ;
 int sprintf (char*,char*,...) ;
 int thumb_mode (struct pt_regs*) ;

__attribute__((used)) static void __dump_instr(const char *lvl, struct pt_regs *regs)
{
 unsigned long addr = instruction_pointer(regs);
 const int thumb = thumb_mode(regs);
 const int width = thumb ? 4 : 8;
 char str[sizeof("00000000 ") * 5 + 2 + 1], *p = str;
 int i;






 for (i = -4; i < 1 + !!thumb; i++) {
  unsigned int val, bad;

  if (thumb)
   bad = get_user(val, &((u16 *)addr)[i]);
  else
   bad = get_user(val, &((u32 *)addr)[i]);

  if (!bad)
   p += sprintf(p, i == 0 ? "(%0*x) " : "%0*x ",
     width, val);
  else {
   p += sprintf(p, "bad PC value");
   break;
  }
 }
 printk("%sCode: %s\n", lvl, str);
}

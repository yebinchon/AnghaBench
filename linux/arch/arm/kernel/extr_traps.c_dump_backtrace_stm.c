
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (int) ;
 int printk (char*,char*) ;
 int sprintf (char*,char*,int,int ) ;

void dump_backtrace_stm(u32 *stack, u32 instruction)
{
 char str[80], *p;
 unsigned int x;
 int reg;

 for (reg = 10, x = 0, p = str; reg >= 0; reg--) {
  if (instruction & BIT(reg)) {
   p += sprintf(p, " r%d:%08x", reg, *stack--);
   if (++x == 6) {
    x = 0;
    p = str;
    printk("%s\n", str);
   }
  }
 }
 if (p != str)
  printk("%s\n", str);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct optable {int type; int length; } ;


 int PT_ER0 ;
 int PT_ER1 ;
 int PT_USP ;
 unsigned long h8300_get_reg (struct task_struct*,int ) ;

 int isbranch (struct task_struct*,char) ;







__attribute__((used)) static unsigned short *decode(struct task_struct *child,
         const struct optable *op,
         char *fetch_p, unsigned short *pc,
         unsigned char inst)
{
 unsigned long addr;
 unsigned long *sp;
 int regno;

 switch (op->type) {
 case 132:
  return (unsigned short *)pc + op->length;
 case 133:
  addr = *(unsigned long *)pc;
  return (unsigned short *)(addr & 0x00ffffff);
 case 134:
  addr = *pc & 0xff;
  return (unsigned short *)(*(unsigned long *)addr);
 case 128:
  sp = (unsigned long *)h8300_get_reg(child, PT_USP);







  return (unsigned short *)(*(sp+2) & 0x00ffffff);
 case 131:
  regno = (*pc >> 4) & 0x07;
  if (regno == 0)
   addr = h8300_get_reg(child, PT_ER0);
  else
   addr = h8300_get_reg(child, regno-1 + PT_ER1);
  return (unsigned short *)addr;
 case 130:
  if (inst == 0x55 || isbranch(child, inst & 0x0f))
   pc = (unsigned short *)((unsigned long)pc +
      ((signed char)(*fetch_p)));
  return pc+1;
 case 129:
  if (inst == 0x5c || isbranch(child, (*fetch_p & 0xf0) >> 4))
   pc = (unsigned short *)((unsigned long)pc +
      ((signed short)(*(pc+1))));
  return pc+2;
 default:
  return ((void*)0);
 }
}

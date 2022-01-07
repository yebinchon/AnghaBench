
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int nip; unsigned long* gpr; int xer; unsigned long link; int ctr; int ccr; int msr; } ;
struct instruction_op {int type; size_t reg; unsigned long val; int xerval; int spr; int ccval; } ;






 int BARRIER_MASK ;



 int BRTAKEN ;

 int DECCTR ;
 int GETTYPE (int) ;


 int SETCC ;
 int SETLK ;
 int SETREG ;
 int SETXER ;



 int WARN_ON_ONCE (int) ;
 int eieio () ;
 int isync () ;
 int mb () ;
 unsigned long truncate_if_32bit (int ,int) ;

void emulate_update_regs(struct pt_regs *regs, struct instruction_op *op)
{
 unsigned long next_pc;

 next_pc = truncate_if_32bit(regs->msr, regs->nip + 4);
 switch (GETTYPE(op->type)) {
 case 133:
  if (op->type & SETREG)
   regs->gpr[op->reg] = op->val;
  if (op->type & SETCC)
   regs->ccr = op->ccval;
  if (op->type & SETXER)
   regs->xer = op->xerval;
  break;

 case 134:
  if (op->type & SETLK)
   regs->link = next_pc;
  if (op->type & BRTAKEN)
   next_pc = op->val;
  if (op->type & DECCTR)
   --regs->ctr;
  break;

 case 140:
  switch (op->type & BARRIER_MASK) {
  case 135:
   mb();
   break;
  case 138:
   isync();
   break;
  case 139:
   eieio();
   break;
  case 137:
   asm volatile("lwsync" : : : "memory");
   break;
  case 136:
   asm volatile("ptesync" : : : "memory");
   break;
  }
  break;

 case 132:
  switch (op->spr) {
  case 128:
   regs->gpr[op->reg] = regs->xer & 0xffffffffUL;
   break;
  case 129:
   regs->gpr[op->reg] = regs->link;
   break;
  case 130:
   regs->gpr[op->reg] = regs->ctr;
   break;
  default:
   WARN_ON_ONCE(1);
  }
  break;

 case 131:
  switch (op->spr) {
  case 128:
   regs->xer = op->val & 0xffffffffUL;
   break;
  case 129:
   regs->link = op->val;
   break;
  case 130:
   regs->ctr = op->val;
   break;
  default:
   WARN_ON_ONCE(1);
  }
  break;

 default:
  WARN_ON_ONCE(1);
 }
 regs->nip = next_pc;
}

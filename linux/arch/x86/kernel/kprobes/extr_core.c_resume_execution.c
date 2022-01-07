
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {unsigned long flags; unsigned long ip; } ;
struct kprobe_ctlblk {unsigned long kprobe_old_flags; } ;
struct TYPE_2__ {int* insn; int boostable; } ;
struct kprobe {TYPE_1__ ainsn; scalar_t__ addr; } ;
typedef int kprobe_opcode_t ;


 unsigned long X86_EFLAGS_IF ;
 unsigned long X86_EFLAGS_TF ;
 int restore_btf () ;
 int* skip_prefixes (int*) ;
 unsigned long* stack_addr (struct pt_regs*) ;

__attribute__((used)) static void resume_execution(struct kprobe *p, struct pt_regs *regs,
        struct kprobe_ctlblk *kcb)
{
 unsigned long *tos = stack_addr(regs);
 unsigned long copy_ip = (unsigned long)p->ainsn.insn;
 unsigned long orig_ip = (unsigned long)p->addr;
 kprobe_opcode_t *insn = p->ainsn.insn;


 insn = skip_prefixes(insn);

 regs->flags &= ~X86_EFLAGS_TF;
 switch (*insn) {
 case 0x9c:
  *tos &= ~(X86_EFLAGS_TF | X86_EFLAGS_IF);
  *tos |= kcb->kprobe_old_flags;
  break;
 case 0xc2:
 case 0xc3:
 case 0xca:
 case 0xcb:
 case 0xcf:
 case 0xea:

  p->ainsn.boostable = 1;
  goto no_change;
 case 0xe8:
  *tos = orig_ip + (*tos - copy_ip);
  break;





 case 0xff:
  if ((insn[1] & 0x30) == 0x10) {





   *tos = orig_ip + (*tos - copy_ip);
   goto no_change;
  } else if (((insn[1] & 0x31) == 0x20) ||
      ((insn[1] & 0x31) == 0x21)) {




   p->ainsn.boostable = 1;
   goto no_change;
  }
 default:
  break;
 }

 regs->ip += orig_ip - copy_ip;

no_change:
 restore_btf();
}

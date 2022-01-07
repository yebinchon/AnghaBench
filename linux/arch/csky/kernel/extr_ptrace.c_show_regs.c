
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {scalar_t__* regs; scalar_t__ pc; scalar_t__ lr; int rlo; int rhi; int tls; int * exregs; int a3; int a2; int a1; int a0; scalar_t__ sr; int orig_a0; } ;
struct TYPE_4__ {TYPE_1__* mm; int pid; int comm; } ;
struct TYPE_3__ {scalar_t__ start_stack; scalar_t__ brk; scalar_t__ end_data; scalar_t__ start_data; scalar_t__ end_code; scalar_t__ start_code; } ;


 int PAGE_SIZE ;
 TYPE_2__* current ;
 int pr_cont (char*,...) ;
 int pr_info (char*,...) ;
 int show_stack (int *,unsigned long*) ;

void show_regs(struct pt_regs *fp)
{
 unsigned long *sp;
 unsigned char *tp;
 int i;

 pr_info("\nCURRENT PROCESS:\n\n");
 pr_info("COMM=%s PID=%d\n", current->comm, current->pid);

 if (current->mm) {
  pr_info("TEXT=%08x-%08x DATA=%08x-%08x BSS=%08x-%08x\n",
         (int) current->mm->start_code,
         (int) current->mm->end_code,
         (int) current->mm->start_data,
         (int) current->mm->end_data,
         (int) current->mm->end_data,
         (int) current->mm->brk);
  pr_info("USER-STACK=%08x  KERNEL-STACK=%08x\n\n",
         (int) current->mm->start_stack,
         (int) (((unsigned long) current) + 2 * PAGE_SIZE));
 }

 pr_info("PC: 0x%08lx (%pS)\n", (long)fp->pc, (void *)fp->pc);
 pr_info("LR: 0x%08lx (%pS)\n", (long)fp->lr, (void *)fp->lr);
 pr_info("SP: 0x%08lx\n", (long)fp);
 pr_info("orig_a0: 0x%08lx\n", fp->orig_a0);
 pr_info("PSR: 0x%08lx\n", (long)fp->sr);

 pr_info(" a0: 0x%08lx   a1: 0x%08lx   a2: 0x%08lx   a3: 0x%08lx\n",
  fp->a0, fp->a1, fp->a2, fp->a3);
 pr_info(" r6: 0x%08lx   r7: 0x%08lx   r8: 0x%08lx   r9: 0x%08lx\n",
  fp->regs[0], fp->regs[1], fp->regs[2], fp->regs[3]);
 pr_info("r10: 0x%08lx  r11: 0x%08lx  r12: 0x%08lx  r13: 0x%08lx\n",
  fp->regs[4], fp->regs[5], fp->regs[6], fp->regs[7]);
 pr_info("r14: 0x%08lx   r1: 0x%08lx  r15: 0x%08lx\n",
  fp->regs[8], fp->regs[9], fp->lr);


 pr_info("\nCODE:");
 tp = ((unsigned char *) fp->pc) - 0x20;
 tp += ((int)tp % 4) ? 2 : 0;
 for (sp = (unsigned long *) tp, i = 0; (i < 0x40); i += 4) {
  if ((i % 0x10) == 0)
   pr_cont("\n%08x: ", (int) (tp + i));
  pr_cont("%08x ", (int) *sp++);
 }
 pr_cont("\n");

 pr_info("\nKERNEL STACK:");
 tp = ((unsigned char *) fp) - 0x40;
 for (sp = (unsigned long *) tp, i = 0; (i < 0xc0); i += 4) {
  if ((i % 0x10) == 0)
   pr_cont("\n%08x: ", (int) (tp + i));
  pr_cont("%08x ", (int) *sp++);
 }
 pr_cont("\n");

 show_stack(((void*)0), (unsigned long *)fp->regs[4]);
 return;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_stack {int dummy; } ;
struct pt_regs {int dummy; } ;


 int BLANK () ;
 int DEFINE (int ,int) ;
 int OFFSET (int ,int ,int ) ;
 int PT_EA ;
 int PT_ESTATUS ;
 int PT_FP ;
 int PT_GP ;
 int PT_ORIG_R2 ;
 int PT_ORIG_R7 ;
 int PT_R1 ;
 int PT_R10 ;
 int PT_R11 ;
 int PT_R12 ;
 int PT_R13 ;
 int PT_R14 ;
 int PT_R15 ;
 int PT_R2 ;
 int PT_R3 ;
 int PT_R4 ;
 int PT_R5 ;
 int PT_R6 ;
 int PT_R7 ;
 int PT_R8 ;
 int PT_R9 ;
 int PT_RA ;
 int PT_REGS_SIZE ;
 int PT_SP ;
 int SWITCH_STACK_SIZE ;
 int SW_FP ;
 int SW_GP ;
 int SW_R16 ;
 int SW_R17 ;
 int SW_R18 ;
 int SW_R19 ;
 int SW_R20 ;
 int SW_R21 ;
 int SW_R22 ;
 int SW_R23 ;
 int SW_RA ;
 int TASK_THREAD ;
 int THREAD_KPSR ;
 int THREAD_KSP ;
 int TI_FLAGS ;
 int TI_PREEMPT_COUNT ;
 int ea ;
 int estatus ;
 int flags ;
 int fp ;
 int gp ;
 int kpsr ;
 int ksp ;
 int orig_r2 ;
 int orig_r7 ;
 int preempt_count ;
 int pt_regs ;
 int r1 ;
 int r10 ;
 int r11 ;
 int r12 ;
 int r13 ;
 int r14 ;
 int r15 ;
 int r16 ;
 int r17 ;
 int r18 ;
 int r19 ;
 int r2 ;
 int r20 ;
 int r21 ;
 int r22 ;
 int r23 ;
 int r3 ;
 int r4 ;
 int r5 ;
 int r6 ;
 int r7 ;
 int r8 ;
 int r9 ;
 int ra ;
 int sp ;
 int switch_stack ;
 int task_struct ;
 int thread ;
 int thread_info ;
 int thread_struct ;

int main(void)
{

 OFFSET(TASK_THREAD, task_struct, thread);
 BLANK();


 OFFSET(THREAD_KSP, thread_struct, ksp);
 OFFSET(THREAD_KPSR, thread_struct, kpsr);
 BLANK();


 OFFSET(PT_ORIG_R2, pt_regs, orig_r2);
 OFFSET(PT_ORIG_R7, pt_regs, orig_r7);

 OFFSET(PT_R1, pt_regs, r1);
 OFFSET(PT_R2, pt_regs, r2);
 OFFSET(PT_R3, pt_regs, r3);
 OFFSET(PT_R4, pt_regs, r4);
 OFFSET(PT_R5, pt_regs, r5);
 OFFSET(PT_R6, pt_regs, r6);
 OFFSET(PT_R7, pt_regs, r7);
 OFFSET(PT_R8, pt_regs, r8);
 OFFSET(PT_R9, pt_regs, r9);
 OFFSET(PT_R10, pt_regs, r10);
 OFFSET(PT_R11, pt_regs, r11);
 OFFSET(PT_R12, pt_regs, r12);
 OFFSET(PT_R13, pt_regs, r13);
 OFFSET(PT_R14, pt_regs, r14);
 OFFSET(PT_R15, pt_regs, r15);
 OFFSET(PT_EA, pt_regs, ea);
 OFFSET(PT_RA, pt_regs, ra);
 OFFSET(PT_FP, pt_regs, fp);
 OFFSET(PT_SP, pt_regs, sp);
 OFFSET(PT_GP, pt_regs, gp);
 OFFSET(PT_ESTATUS, pt_regs, estatus);
 DEFINE(PT_REGS_SIZE, sizeof(struct pt_regs));
 BLANK();


 OFFSET(SW_R16, switch_stack, r16);
 OFFSET(SW_R17, switch_stack, r17);
 OFFSET(SW_R18, switch_stack, r18);
 OFFSET(SW_R19, switch_stack, r19);
 OFFSET(SW_R20, switch_stack, r20);
 OFFSET(SW_R21, switch_stack, r21);
 OFFSET(SW_R22, switch_stack, r22);
 OFFSET(SW_R23, switch_stack, r23);
 OFFSET(SW_FP, switch_stack, fp);
 OFFSET(SW_GP, switch_stack, gp);
 OFFSET(SW_RA, switch_stack, ra);
 DEFINE(SWITCH_STACK_SIZE, sizeof(struct switch_stack));
 BLANK();


 OFFSET(TI_FLAGS, thread_info, flags);
 OFFSET(TI_PREEMPT_COUNT, thread_info, preempt_count);
 BLANK();

 return 0;
}

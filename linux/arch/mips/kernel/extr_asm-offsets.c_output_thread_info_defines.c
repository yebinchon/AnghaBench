
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLANK () ;
 int COMMENT (char*) ;
 int DEFINE (int ,int ) ;
 int IRQ_STACK_SIZE ;
 int IRQ_STACK_START ;
 int OFFSET (int ,int ,int ) ;
 int THREAD_MASK ;
 int THREAD_SIZE ;
 int TI_ADDR_LIMIT ;
 int TI_CPU ;
 int TI_FLAGS ;
 int TI_PRE_COUNT ;
 int TI_REGS ;
 int TI_TASK ;
 int TI_TP_VALUE ;
 int _IRQ_STACK_SIZE ;
 int _IRQ_STACK_START ;
 int _THREAD_MASK ;
 int _THREAD_SIZE ;
 int addr_limit ;
 int cpu ;
 int flags ;
 int preempt_count ;
 int regs ;
 int task ;
 int thread_info ;
 int tp_value ;

void output_thread_info_defines(void)
{
 COMMENT("MIPS thread_info offsets.");
 OFFSET(TI_TASK, thread_info, task);
 OFFSET(TI_FLAGS, thread_info, flags);
 OFFSET(TI_TP_VALUE, thread_info, tp_value);
 OFFSET(TI_CPU, thread_info, cpu);
 OFFSET(TI_PRE_COUNT, thread_info, preempt_count);
 OFFSET(TI_ADDR_LIMIT, thread_info, addr_limit);
 OFFSET(TI_REGS, thread_info, regs);
 DEFINE(_THREAD_SIZE, THREAD_SIZE);
 DEFINE(_THREAD_MASK, THREAD_MASK);
 DEFINE(_IRQ_STACK_SIZE, IRQ_STACK_SIZE);
 DEFINE(_IRQ_STACK_START, IRQ_STACK_START);
 BLANK();
}

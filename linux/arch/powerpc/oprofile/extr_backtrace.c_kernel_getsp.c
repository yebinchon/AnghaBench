
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STACK_FRAME_OVERHEAD ;
 int STACK_LR (unsigned long*) ;
 unsigned long STACK_SP (unsigned long*) ;
 int current ;
 int oprofile_add_trace (int ) ;
 int validate_sp (unsigned long,int ,int ) ;

__attribute__((used)) static unsigned long kernel_getsp(unsigned long sp, int is_first)
{
 unsigned long *stack_frame = (unsigned long *)sp;

 if (!validate_sp(sp, current, STACK_FRAME_OVERHEAD))
  return 0;

 if (!is_first)
  oprofile_add_trace(STACK_LR(stack_frame));







 return STACK_SP(stack_frame);
}

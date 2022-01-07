
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stack_info {int dummy; } ;
struct pt_regs {int dummy; } ;
struct TYPE_2__ {unsigned long restart_stack; } ;


 TYPE_1__ S390_lowcore ;
 int STACK_FRAME_OVERHEAD ;
 int STACK_TYPE_RESTART ;
 scalar_t__ THREAD_SIZE ;
 int in_stack (unsigned long,struct stack_info*,int ,scalar_t__,unsigned long) ;

__attribute__((used)) static bool in_restart_stack(unsigned long sp, struct stack_info *info)
{
 unsigned long frame_size, top;

 frame_size = STACK_FRAME_OVERHEAD + sizeof(struct pt_regs);
 top = S390_lowcore.restart_stack + frame_size;
 return in_stack(sp, info, STACK_TYPE_RESTART, top - THREAD_SIZE, top);
}

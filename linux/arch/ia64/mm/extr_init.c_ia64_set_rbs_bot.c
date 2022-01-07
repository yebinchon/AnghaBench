
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rbs_bot; } ;
struct TYPE_6__ {TYPE_2__* mm; TYPE_1__ thread; } ;
struct TYPE_5__ {scalar_t__ start_stack; } ;


 unsigned long MAX_USER_STACK_SIZE ;
 int PAGE_ALIGN (scalar_t__) ;
 int RLIMIT_STACK ;
 TYPE_3__* current ;
 int rlimit_max (int ) ;

inline void
ia64_set_rbs_bot (void)
{
 unsigned long stack_size = rlimit_max(RLIMIT_STACK) & -16;

 if (stack_size > MAX_USER_STACK_SIZE)
  stack_size = MAX_USER_STACK_SIZE;
 current->thread.rbs_bot = PAGE_ALIGN(current->mm->start_stack - stack_size);
}

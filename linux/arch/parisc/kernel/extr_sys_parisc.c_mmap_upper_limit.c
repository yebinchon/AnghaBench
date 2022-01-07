
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rlimit {unsigned long rlim_max; } ;
struct TYPE_2__ {int flags; } ;


 unsigned long PAGE_ALIGN (scalar_t__) ;
 unsigned long PAGE_SHIFT ;
 int PF_RANDOMIZE ;
 int RLIMIT_STACK ;
 unsigned long STACK_RND_MASK ;
 unsigned long STACK_SIZE_MAX ;
 scalar_t__ STACK_TOP ;
 TYPE_1__* current ;
 unsigned long rlimit_max (int ) ;

__attribute__((used)) static unsigned long mmap_upper_limit(struct rlimit *rlim_stack)
{
 unsigned long stack_base;


 stack_base = rlim_stack ? rlim_stack->rlim_max
    : rlimit_max(RLIMIT_STACK);
 if (stack_base > STACK_SIZE_MAX)
  stack_base = STACK_SIZE_MAX;


 if (current->flags & PF_RANDOMIZE)
  stack_base += (STACK_RND_MASK << PAGE_SHIFT);

 return PAGE_ALIGN(STACK_TOP - stack_base);
}

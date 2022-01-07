
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ regs; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int TRAP (scalar_t__) ;
 TYPE_2__* current ;

__attribute__((used)) static inline int is_exec_fault(void)
{
 return current->thread.regs && TRAP(current->thread.regs) == 0x400;
}

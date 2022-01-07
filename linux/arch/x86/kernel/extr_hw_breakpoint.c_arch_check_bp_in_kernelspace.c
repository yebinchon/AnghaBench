
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch_hw_breakpoint {unsigned long address; int len; } ;


 unsigned long TASK_SIZE_MAX ;
 int WARN_ON_ONCE (int) ;
 int arch_bp_generic_len (int ) ;

int arch_check_bp_in_kernelspace(struct arch_hw_breakpoint *hw)
{
 unsigned long va;
 int len;

 va = hw->address;
 len = arch_bp_generic_len(hw->len);
 WARN_ON_ONCE(len < 0);





 return (va >= TASK_SIZE_MAX) || ((va + len - 1) >= TASK_SIZE_MAX);
}

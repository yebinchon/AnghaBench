
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct arch_hw_breakpoint {unsigned long address; TYPE_1__ ctrl; } ;


 unsigned long TASK_SIZE ;
 unsigned int get_hbp_len (int ) ;

int arch_check_bp_in_kernelspace(struct arch_hw_breakpoint *hw)
{
 unsigned int len;
 unsigned long va;

 va = hw->address;
 len = get_hbp_len(hw->ctrl.len);

 return (va >= TASK_SIZE) && ((va + len - 1) >= TASK_SIZE);
}

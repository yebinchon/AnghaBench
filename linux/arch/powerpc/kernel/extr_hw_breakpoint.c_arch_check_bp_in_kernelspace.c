
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch_hw_breakpoint {int address; } ;


 int is_kernel_addr (int ) ;

int arch_check_bp_in_kernelspace(struct arch_hw_breakpoint *hw)
{
 return is_kernel_addr(hw->address);
}

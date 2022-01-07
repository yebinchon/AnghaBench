
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_X86_64 ;
 scalar_t__ IS_ENABLED (int ) ;
 unsigned long TASK_SIZE_MAX ;
 scalar_t__ is_vsyscall_vaddr (unsigned long) ;

__attribute__((used)) static int fault_in_kernel_space(unsigned long address)
{





 if (IS_ENABLED(CONFIG_X86_64) && is_vsyscall_vaddr(address))
  return 0;

 return address >= TASK_SIZE_MAX;
}

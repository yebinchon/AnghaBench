
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short INSN_UD0 ;
 unsigned short INSN_UD2 ;
 unsigned long TASK_SIZE_MAX ;
 scalar_t__ probe_kernel_address (unsigned short*,unsigned short) ;

int is_valid_bugaddr(unsigned long addr)
{
 unsigned short ud;

 if (addr < TASK_SIZE_MAX)
  return 0;

 if (probe_kernel_address((unsigned short *)addr, ud))
  return 0;

 return ud == INSN_UD0 || ud == INSN_UD2;
}

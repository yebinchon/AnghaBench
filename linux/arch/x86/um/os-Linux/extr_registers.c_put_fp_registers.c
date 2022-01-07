
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int restore_fp_registers (int,unsigned long*) ;

int put_fp_registers(int pid, unsigned long *regs)
{
 return restore_fp_registers(pid, regs);
}

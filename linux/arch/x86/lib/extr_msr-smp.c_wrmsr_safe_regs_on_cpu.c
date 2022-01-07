
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msr_regs_info {int err; int * regs; } ;


 int EIO ;
 int __wrmsr_safe_regs_on_cpu ;
 int smp_call_function_single (unsigned int,int ,struct msr_regs_info*,int) ;

int wrmsr_safe_regs_on_cpu(unsigned int cpu, u32 *regs)
{
 int err;
 struct msr_regs_info rv;

 rv.regs = regs;
 rv.err = -EIO;
 err = smp_call_function_single(cpu, __wrmsr_safe_regs_on_cpu, &rv, 1);

 return err ? err : rv.err;
}

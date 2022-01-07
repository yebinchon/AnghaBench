
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int q; } ;
struct msr_info {int err; TYPE_1__ reg; int msr_no; } ;
typedef int rv ;


 int __wrmsr_safe_on_cpu ;
 int memset (struct msr_info*,int ,int) ;
 int smp_call_function_single (unsigned int,int ,struct msr_info*,int) ;

int wrmsrl_safe_on_cpu(unsigned int cpu, u32 msr_no, u64 q)
{
 int err;
 struct msr_info rv;

 memset(&rv, 0, sizeof(rv));

 rv.msr_no = msr_no;
 rv.reg.q = q;

 err = smp_call_function_single(cpu, __wrmsr_safe_on_cpu, &rv, 1);

 return err ? err : rv.err;
}

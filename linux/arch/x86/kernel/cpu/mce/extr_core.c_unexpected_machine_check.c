
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int pr_err (char*,int ) ;
 int smp_processor_id () ;

__attribute__((used)) static void unexpected_machine_check(struct pt_regs *regs, long error_code)
{
 pr_err("CPU#%d: Unexpected int18 (Machine Check)\n",
        smp_processor_id());
}

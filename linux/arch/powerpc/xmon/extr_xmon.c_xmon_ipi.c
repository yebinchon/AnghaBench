
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int cpumask_test_cpu (int ,int *) ;
 int cpus_in_xmon ;
 scalar_t__ in_xmon ;
 int smp_processor_id () ;
 int xmon_core (struct pt_regs*,int) ;

__attribute__((used)) static int xmon_ipi(struct pt_regs *regs)
{




 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __put_cpu_fpsimd_context () ;
 int preempt_enable () ;

__attribute__((used)) static void put_cpu_fpsimd_context(void)
{
 __put_cpu_fpsimd_context();
 preempt_enable();
}

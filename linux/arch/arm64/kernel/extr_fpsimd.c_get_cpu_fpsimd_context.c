
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __get_cpu_fpsimd_context () ;
 int preempt_disable () ;

__attribute__((used)) static void get_cpu_fpsimd_context(void)
{
 preempt_disable();
 __get_cpu_fpsimd_context();
}

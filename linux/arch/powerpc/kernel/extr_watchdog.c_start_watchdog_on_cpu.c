
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int smp_call_function_single (unsigned int,int ,int *,int) ;
 int start_watchdog ;

__attribute__((used)) static int start_watchdog_on_cpu(unsigned int cpu)
{
 return smp_call_function_single(cpu, start_watchdog, ((void*)0), 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int smp_call_function_single (unsigned int,int ,int *,int) ;
 int stop_watchdog ;

__attribute__((used)) static int stop_watchdog_on_cpu(unsigned int cpu)
{
 return smp_call_function_single(cpu, stop_watchdog, ((void*)0), 1);
}

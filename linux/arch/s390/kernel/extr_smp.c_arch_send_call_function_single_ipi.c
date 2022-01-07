
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ec_call_function_single ;
 scalar_t__ pcpu_devices ;
 int pcpu_ec_call (scalar_t__,int ) ;

void arch_send_call_function_single_ipi(int cpu)
{
 pcpu_ec_call(pcpu_devices + cpu, ec_call_function_single);
}

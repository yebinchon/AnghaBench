
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_has_vmx_rdtscp () ;

__attribute__((used)) static bool vmx_rdtscp_supported(void)
{
 return cpu_has_vmx_rdtscp();
}

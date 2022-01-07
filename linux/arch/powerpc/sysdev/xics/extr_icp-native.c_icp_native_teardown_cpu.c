
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int icp_native_set_qirr (int,int) ;
 int smp_processor_id () ;

__attribute__((used)) static void icp_native_teardown_cpu(void)
{
 int cpu = smp_processor_id();


 icp_native_set_qirr(cpu, 0xff);
}

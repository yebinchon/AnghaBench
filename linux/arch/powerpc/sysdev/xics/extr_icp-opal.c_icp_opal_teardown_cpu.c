
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hard_smp_processor_id () ;
 int opal_int_set_mfrr (int,int) ;

__attribute__((used)) static void icp_opal_teardown_cpu(void)
{
 int hw_cpu = hard_smp_processor_id();


 opal_int_set_mfrr(hw_cpu, 0xff);
}

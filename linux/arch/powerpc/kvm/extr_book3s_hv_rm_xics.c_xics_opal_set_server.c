
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFAULT_PRIORITY ;
 int get_hard_smp_processor_id (int) ;
 int opal_set_xive (unsigned int,unsigned int,int ) ;

__attribute__((used)) static int xics_opal_set_server(unsigned int hw_irq, int server_cpu)
{
 unsigned int mangle_cpu = get_hard_smp_processor_id(server_cpu) << 2;

 return opal_set_xive(hw_irq, mangle_cpu, DEFAULT_PRIORITY);
}

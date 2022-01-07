
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int BUG_ON (int) ;
 int be32_to_cpu (int const) ;
 int boot_cpuid ;
 int get_hard_smp_processor_id (int ) ;
 struct device_node* of_get_cpu_node (int ,int *) ;
 int * of_get_property (struct device_node*,char*,int*) ;
 int of_node_put (struct device_node*) ;
 int pr_devel (char*,int) ;
 int xics_default_distrib_server ;
 int xics_default_server ;

void xics_update_irq_servers(void)
{
 int i, j;
 struct device_node *np;
 u32 ilen;
 const __be32 *ireg;
 u32 hcpuid;


 np = of_get_cpu_node(boot_cpuid, ((void*)0));
 BUG_ON(!np);

 hcpuid = get_hard_smp_processor_id(boot_cpuid);
 xics_default_server = xics_default_distrib_server = hcpuid;

 pr_devel("xics: xics_default_server = 0x%x\n", xics_default_server);

 ireg = of_get_property(np, "ibm,ppc-interrupt-gserver#s", &ilen);
 if (!ireg) {
  of_node_put(np);
  return;
 }

 i = ilen / sizeof(int);






 for (j = 0; j < i; j += 2) {
  if (be32_to_cpu(ireg[j]) == hcpuid) {
   xics_default_distrib_server = be32_to_cpu(ireg[j+1]);
   break;
  }
 }
 pr_devel("xics: xics_default_distrib_server = 0x%x\n",
   xics_default_distrib_server);
 of_node_put(np);
}

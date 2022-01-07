
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 int DBCR0_RST_SYSTEM ;
 int SPRN_DBCR0 ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;
 struct device_node* of_get_cpu_node (int ,int *) ;
 int* of_get_property (struct device_node*,char*,int *) ;

void ppc4xx_reset_system(char *cmd)
{
 struct device_node *np;
 u32 reset_type = DBCR0_RST_SYSTEM;
 const u32 *prop;

 np = of_get_cpu_node(0, ((void*)0));
 if (np) {
  prop = of_get_property(np, "reset-type", ((void*)0));







  if ((prop) && ((prop[0] >= 1) && (prop[0] <= 3)))
   reset_type = prop[0] << 28;
 }

 mtspr(SPRN_DBCR0, mfspr(SPRN_DBCR0) | reset_type);

 while (1)
  ;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int be32_to_cpu (int const) ;
 struct device_node* of_find_node_by_path (char*) ;
 int * of_get_property (struct device_node*,char*,int*) ;
 int pr_err (char*) ;

__attribute__((used)) static bool xive_get_max_prio(u8 *max_prio)
{
 struct device_node *rootdn;
 const __be32 *reg;
 u32 len;
 int prio, found;

 rootdn = of_find_node_by_path("/");
 if (!rootdn) {
  pr_err("not root node found !\n");
  return 0;
 }

 reg = of_get_property(rootdn, "ibm,plat-res-int-priorities", &len);
 if (!reg) {
  pr_err("Failed to read 'ibm,plat-res-int-priorities' property\n");
  return 0;
 }

 if (len % (2 * sizeof(u32)) != 0) {
  pr_err("invalid 'ibm,plat-res-int-priorities' property\n");
  return 0;
 }





 found = 0xFF;
 for (prio = 0; prio < 8; prio++) {
  int reserved = 0;
  int i;

  for (i = 0; i < len / (2 * sizeof(u32)); i++) {
   int base = be32_to_cpu(reg[2 * i]);
   int range = be32_to_cpu(reg[2 * i + 1]);

   if (prio >= base && prio < base + range)
    reserved++;
  }

  if (!reserved)
   found = prio;
 }

 if (found == 0xFF) {
  pr_err("no valid priority found in 'ibm,plat-res-int-priorities'\n");
  return 0;
 }

 *max_prio = found;
 return 1;
}

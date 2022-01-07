
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct memcons {int magic; } ;
struct device_node {int dummy; } ;


 scalar_t__ MEMCONS_MAGIC ;
 scalar_t__ be64_to_cpu (int ) ;
 scalar_t__ of_property_read_u64 (struct device_node*,char const*,int *) ;
 struct memcons* phys_to_virt (int ) ;
 int pr_warn (char*,...) ;

struct memcons *memcons_init(struct device_node *node, const char *mc_prop_name)
{
 u64 mcaddr;
 struct memcons *mc;

 if (of_property_read_u64(node, mc_prop_name, &mcaddr)) {
  pr_warn("%s property not found, no message log\n",
   mc_prop_name);
  goto out_err;
 }

 mc = phys_to_virt(mcaddr);
 if (!mc) {
  pr_warn("memory console address is invalid\n");
  goto out_err;
 }

 if (be64_to_cpu(mc->magic) != MEMCONS_MAGIC) {
  pr_warn("memory console version is invalid\n");
  goto out_err;
 }

 return mc;

out_err:
 return ((void*)0);
}

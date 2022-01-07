
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int kcalloc (int,int,int ) ;
 int kmem_cache_create (char*,int ,int ,int ,int *) ;
 int of_property_count_elems_of_size (struct device_node*,char*,int) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;
 int of_property_read_u32_array (struct device_node*,char*,int ,int) ;
 int pr_err (char*,...) ;
 int xive_provision_cache ;
 int xive_provision_chip_count ;
 int xive_provision_chips ;
 int xive_provision_size ;

__attribute__((used)) static bool xive_parse_provisioning(struct device_node *np)
{
 int rc;

 if (of_property_read_u32(np, "ibm,xive-provision-page-size",
     &xive_provision_size) < 0)
  return 1;
 rc = of_property_count_elems_of_size(np, "ibm,xive-provision-chips", 4);
 if (rc < 0) {
  pr_err("Error %d getting provision chips array\n", rc);
  return 0;
 }
 xive_provision_chip_count = rc;
 if (rc == 0)
  return 1;

 xive_provision_chips = kcalloc(4, xive_provision_chip_count,
           GFP_KERNEL);
 if (WARN_ON(!xive_provision_chips))
  return 0;

 rc = of_property_read_u32_array(np, "ibm,xive-provision-chips",
     xive_provision_chips,
     xive_provision_chip_count);
 if (rc < 0) {
  pr_err("Error %d reading provision chips array\n", rc);
  return 0;
 }

 xive_provision_cache = kmem_cache_create("xive-provision",
       xive_provision_size,
       xive_provision_size,
       0, ((void*)0));
 if (!xive_provision_cache) {
  pr_err("Failed to allocate provision cache\n");
  return 0;
 }
 return 1;
}

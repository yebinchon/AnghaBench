
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int cpu_to_be32 (int ) ;
 int dlpar_acquire_drc (int ) ;
 int dlpar_attach_node (struct device_node*,int ) ;
 struct device_node* dlpar_configure_connector (int ,int ) ;
 int dlpar_free_cc_nodes (struct device_node*) ;
 scalar_t__ dlpar_release_drc (int ) ;
 int pmem_node ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,int,...) ;
 int pr_info (char*,struct device_node*,int ) ;

__attribute__((used)) static ssize_t pmem_drc_add_node(u32 drc_index)
{
 struct device_node *dn;
 int rc;

 pr_debug("Attempting to add pmem node, drc index: %x\n", drc_index);

 rc = dlpar_acquire_drc(drc_index);
 if (rc) {
  pr_err("Failed to acquire DRC, rc: %d, drc index: %x\n",
   rc, drc_index);
  return -EINVAL;
 }

 dn = dlpar_configure_connector(cpu_to_be32(drc_index), pmem_node);
 if (!dn) {
  pr_err("configure-connector failed for drc %x\n", drc_index);
  dlpar_release_drc(drc_index);
  return -EINVAL;
 }


 rc = dlpar_attach_node(dn, pmem_node);
 if (rc) {
  pr_err("Failed to attach node %pOF, rc: %d, drc index: %x\n",
   dn, rc, drc_index);

  if (dlpar_release_drc(drc_index))
   dlpar_free_cc_nodes(dn);

  return rc;
 }

 pr_info("Successfully added %pOF, drc index: %x\n", dn, drc_index);

 return 0;
}

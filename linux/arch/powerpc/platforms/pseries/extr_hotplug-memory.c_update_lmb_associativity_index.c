
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct property {int dummy; } ;
struct drmem_lmb {int aa_index; int drc_index; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int cpu_to_be32 (int ) ;
 struct device_node* dlpar_configure_connector (int ,struct device_node*) ;
 int dlpar_free_cc_nodes (struct device_node*) ;
 int find_aa_index (struct device_node*,struct property*,int const*,int *) ;
 struct device_node* of_find_node_by_path (char*) ;
 struct property* of_find_property (struct device_node*,char*,int *) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 int pr_err (char*) ;

__attribute__((used)) static int update_lmb_associativity_index(struct drmem_lmb *lmb)
{
 struct device_node *parent, *lmb_node, *dr_node;
 struct property *ala_prop;
 const u32 *lmb_assoc;
 u32 aa_index;
 bool found;

 parent = of_find_node_by_path("/");
 if (!parent)
  return -ENODEV;

 lmb_node = dlpar_configure_connector(cpu_to_be32(lmb->drc_index),
          parent);
 of_node_put(parent);
 if (!lmb_node)
  return -EINVAL;

 lmb_assoc = of_get_property(lmb_node, "ibm,associativity", ((void*)0));
 if (!lmb_assoc) {
  dlpar_free_cc_nodes(lmb_node);
  return -ENODEV;
 }

 dr_node = of_find_node_by_path("/ibm,dynamic-reconfiguration-memory");
 if (!dr_node) {
  dlpar_free_cc_nodes(lmb_node);
  return -ENODEV;
 }

 ala_prop = of_find_property(dr_node, "ibm,associativity-lookup-arrays",
        ((void*)0));
 if (!ala_prop) {
  of_node_put(dr_node);
  dlpar_free_cc_nodes(lmb_node);
  return -ENODEV;
 }

 found = find_aa_index(dr_node, ala_prop, lmb_assoc, &aa_index);

 of_node_put(dr_node);
 dlpar_free_cc_nodes(lmb_node);

 if (!found) {
  pr_err("Could not find LMB associativity\n");
  return -1;
 }

 lmb->aa_index = aa_index;
 return 0;
}

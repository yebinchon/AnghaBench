
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int full_name; } ;
struct cc_workarea {int name_offset; } ;


 int GFP_KERNEL ;
 int OF_DYNAMIC ;
 int be32_to_cpu (int ) ;
 int kfree (struct device_node*) ;
 int kstrdup (char const*,int ) ;
 struct device_node* kzalloc (int,int ) ;
 int of_node_init (struct device_node*) ;
 int of_node_set_flag (struct device_node*,int ) ;

__attribute__((used)) static struct device_node *dlpar_parse_cc_node(struct cc_workarea *ccwa)
{
 struct device_node *dn;
 const char *name;

 dn = kzalloc(sizeof(*dn), GFP_KERNEL);
 if (!dn)
  return ((void*)0);

 name = (const char *)ccwa + be32_to_cpu(ccwa->name_offset);
 dn->full_name = kstrdup(name, GFP_KERNEL);
 if (!dn->full_name) {
  kfree(dn);
  return ((void*)0);
 }

 of_node_set_flag(dn, OF_DYNAMIC);
 of_node_init(dn);

 return dn;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swnode {int * node; } ;
struct software_node {int * parent; } ;
struct property_entry {int dummy; } ;
struct fwnode_handle {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct fwnode_handle* ERR_CAST (struct fwnode_handle const*) ;
 struct fwnode_handle* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct fwnode_handle const*) ;
 int is_software_node (struct fwnode_handle const*) ;
 int kfree (struct software_node*) ;
 struct software_node* kzalloc (int,int ) ;
 int software_node_register_properties (struct software_node*,struct property_entry const*) ;
 struct fwnode_handle* swnode_register (struct software_node*,struct swnode*,int) ;
 struct swnode* to_swnode (struct fwnode_handle const*) ;

struct fwnode_handle *
fwnode_create_software_node(const struct property_entry *properties,
       const struct fwnode_handle *parent)
{
 struct software_node *node;
 struct swnode *p = ((void*)0);
 int ret;

 if (parent) {
  if (IS_ERR(parent))
   return ERR_CAST(parent);
  if (!is_software_node(parent))
   return ERR_PTR(-EINVAL);
  p = to_swnode(parent);
 }

 node = kzalloc(sizeof(*node), GFP_KERNEL);
 if (!node)
  return ERR_PTR(-ENOMEM);

 ret = software_node_register_properties(node, properties);
 if (ret) {
  kfree(node);
  return ERR_PTR(ret);
 }

 node->parent = p ? p->node : ((void*)0);

 return swnode_register(node, p, 1);
}

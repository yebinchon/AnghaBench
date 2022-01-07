
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct fwnode_handle {int * ops; } ;
struct TYPE_5__ {int kset; } ;
struct swnode {int id; unsigned int allocated; struct fwnode_handle fwnode; TYPE_1__ kobj; int children; int entry; int child_ids; struct swnode* parent; struct software_node const* node; } ;
struct software_node {int name; int properties; } ;


 int ENOMEM ;
 struct fwnode_handle* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int KOBJ_ADD ;
 int ida_init (int *) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int kfree (struct swnode*) ;
 int kobject_init_and_add (TYPE_1__*,int *,TYPE_1__*,char*,int) ;
 int kobject_put (TYPE_1__*) ;
 int kobject_uevent (TYPE_1__*,int ) ;
 struct swnode* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int property_entries_free (int ) ;
 int software_node_ops ;
 int software_node_type ;
 int swnode_kset ;
 int swnode_root_ids ;

__attribute__((used)) static struct fwnode_handle *
swnode_register(const struct software_node *node, struct swnode *parent,
  unsigned int allocated)
{
 struct swnode *swnode;
 int ret;

 swnode = kzalloc(sizeof(*swnode), GFP_KERNEL);
 if (!swnode) {
  ret = -ENOMEM;
  goto out_err;
 }

 ret = ida_simple_get(parent ? &parent->child_ids : &swnode_root_ids,
        0, 0, GFP_KERNEL);
 if (ret < 0) {
  kfree(swnode);
  goto out_err;
 }

 swnode->id = ret;
 swnode->node = node;
 swnode->parent = parent;
 swnode->allocated = allocated;
 swnode->kobj.kset = swnode_kset;
 swnode->fwnode.ops = &software_node_ops;

 ida_init(&swnode->child_ids);
 INIT_LIST_HEAD(&swnode->entry);
 INIT_LIST_HEAD(&swnode->children);

 if (node->name)
  ret = kobject_init_and_add(&swnode->kobj, &software_node_type,
        parent ? &parent->kobj : ((void*)0),
        "%s", node->name);
 else
  ret = kobject_init_and_add(&swnode->kobj, &software_node_type,
        parent ? &parent->kobj : ((void*)0),
        "node%d", swnode->id);
 if (ret) {
  kobject_put(&swnode->kobj);
  return ERR_PTR(ret);
 }

 if (parent)
  list_add_tail(&swnode->entry, &parent->children);

 kobject_uevent(&swnode->kobj, KOBJ_ADD);
 return &swnode->fwnode;

out_err:
 if (allocated)
  property_entries_free(node->properties);
 return ERR_PTR(ret);
}

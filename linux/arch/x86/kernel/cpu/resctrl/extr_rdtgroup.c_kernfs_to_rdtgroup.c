
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdtgroup {int dummy; } ;
struct kernfs_node {struct rdtgroup* priv; struct kernfs_node* parent; } ;


 scalar_t__ KERNFS_DIR ;
 scalar_t__ kernfs_type (struct kernfs_node*) ;
 struct kernfs_node* kn_info ;

__attribute__((used)) static struct rdtgroup *kernfs_to_rdtgroup(struct kernfs_node *kn)
{
 if (kernfs_type(kn) == KERNFS_DIR) {






  if (kn == kn_info || kn->parent == kn_info)
   return ((void*)0);
  else
   return kn->priv;
 } else {
  return kn->parent->priv;
 }
}

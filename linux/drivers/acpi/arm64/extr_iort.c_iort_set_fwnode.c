
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iort_fwnode {int list; struct fwnode_handle* fwnode; struct acpi_iort_node* iort_node; } ;
struct fwnode_handle {int dummy; } ;
struct acpi_iort_node {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ WARN_ON (int) ;
 int iort_fwnode_list ;
 int iort_fwnode_lock ;
 struct iort_fwnode* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline int iort_set_fwnode(struct acpi_iort_node *iort_node,
      struct fwnode_handle *fwnode)
{
 struct iort_fwnode *np;

 np = kzalloc(sizeof(struct iort_fwnode), GFP_ATOMIC);

 if (WARN_ON(!np))
  return -ENOMEM;

 INIT_LIST_HEAD(&np->list);
 np->iort_node = iort_node;
 np->fwnode = fwnode;

 spin_lock(&iort_fwnode_lock);
 list_add_tail(&np->list, &iort_fwnode_list);
 spin_unlock(&iort_fwnode_lock);

 return 0;
}

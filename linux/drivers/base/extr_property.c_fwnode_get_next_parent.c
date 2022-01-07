
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;


 struct fwnode_handle* fwnode_get_parent (struct fwnode_handle*) ;
 int fwnode_handle_put (struct fwnode_handle*) ;

struct fwnode_handle *fwnode_get_next_parent(struct fwnode_handle *fwnode)
{
 struct fwnode_handle *parent = fwnode_get_parent(fwnode);

 fwnode_handle_put(fwnode);

 return parent;
}

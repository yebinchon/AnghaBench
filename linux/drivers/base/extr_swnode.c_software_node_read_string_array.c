
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swnode {TYPE_1__* node; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_2__ {int properties; } ;


 int property_entry_read_string_array (int ,char const*,char const**,size_t) ;
 struct swnode* to_swnode (struct fwnode_handle const*) ;

__attribute__((used)) static int software_node_read_string_array(const struct fwnode_handle *fwnode,
        const char *propname,
        const char **val, size_t nval)
{
 struct swnode *swnode = to_swnode(fwnode);

 return property_entry_read_string_array(swnode->node->properties,
      propname, val, nval);
}

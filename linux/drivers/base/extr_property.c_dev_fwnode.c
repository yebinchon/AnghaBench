
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fwnode_handle {int dummy; } ;
struct device {struct fwnode_handle* fwnode; TYPE_1__* of_node; } ;
struct TYPE_2__ {struct fwnode_handle fwnode; } ;


 int CONFIG_OF ;
 scalar_t__ IS_ENABLED (int ) ;

struct fwnode_handle *dev_fwnode(struct device *dev)
{
 return IS_ENABLED(CONFIG_OF) && dev->of_node ?
  &dev->of_node->fwnode : dev->fwnode;
}

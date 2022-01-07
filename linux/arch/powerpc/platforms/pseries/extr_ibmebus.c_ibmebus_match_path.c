
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 struct device_node* of_find_node_by_path (void const*) ;
 TYPE_2__* to_platform_device (struct device*) ;

__attribute__((used)) static int ibmebus_match_path(struct device *dev, const void *data)
{
 struct device_node *dn = to_platform_device(dev)->dev.of_node;
 return (of_find_node_by_path(data) == dn);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_3__ {void const* of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 TYPE_2__* to_platform_device (struct device*) ;

__attribute__((used)) static int ibmebus_match_node(struct device *dev, const void *data)
{
 return to_platform_device(dev)->dev.of_node == data;
}

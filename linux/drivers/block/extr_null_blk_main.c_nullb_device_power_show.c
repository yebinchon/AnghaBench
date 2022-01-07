
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int power; } ;


 int nullb_device_bool_attr_show (int ,char*) ;
 TYPE_1__* to_nullb_device (struct config_item*) ;

__attribute__((used)) static ssize_t nullb_device_power_show(struct config_item *item, char *page)
{
 return nullb_device_bool_attr_show(to_nullb_device(item)->power, page);
}

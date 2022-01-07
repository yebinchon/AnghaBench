
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
struct nullb_device {struct config_item item; } ;
struct config_group {int dummy; } ;


 int ENOMEM ;
 struct config_item* ERR_PTR (int ) ;
 int config_item_init_type_name (struct config_item*,char const*,int *) ;
 struct nullb_device* null_alloc_dev () ;
 int nullb_device_type ;

__attribute__((used)) static struct
config_item *nullb_group_make_item(struct config_group *group, const char *name)
{
 struct nullb_device *dev;

 dev = null_alloc_dev();
 if (!dev)
  return ERR_PTR(-ENOMEM);

 config_item_init_type_name(&dev->item, name, &nullb_device_type);

 return &dev->item;
}

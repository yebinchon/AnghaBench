
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct action_devres {void* data; void (* action ) (void*) ;} ;


 int WARN_ON (int ) ;
 int devm_action_match ;
 int devm_action_release ;
 int devres_destroy (struct device*,int ,int ,struct action_devres*) ;

void devm_remove_action(struct device *dev, void (*action)(void *), void *data)
{
 struct action_devres devres = {
  .data = data,
  .action = action,
 };

 WARN_ON(devres_destroy(dev, devm_action_release, devm_action_match,
          &devres));
}

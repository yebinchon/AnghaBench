
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct action_devres {void (* action ) (void*) ;void* data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_action_release ;
 int devres_add (struct device*,struct action_devres*) ;
 struct action_devres* devres_alloc (int ,int,int ) ;

int devm_add_action(struct device *dev, void (*action)(void *), void *data)
{
 struct action_devres *devres;

 devres = devres_alloc(devm_action_release,
         sizeof(struct action_devres), GFP_KERNEL);
 if (!devres)
  return -ENOMEM;

 devres->data = data;
 devres->action = action;

 devres_add(dev, devres);
 return 0;
}

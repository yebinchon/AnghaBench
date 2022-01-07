
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct action_devres {scalar_t__ action; scalar_t__ data; } ;



__attribute__((used)) static int devm_action_match(struct device *dev, void *res, void *p)
{
 struct action_devres *devres = res;
 struct action_devres *target = p;

 return devres->action == target->action &&
        devres->data == target->data;
}

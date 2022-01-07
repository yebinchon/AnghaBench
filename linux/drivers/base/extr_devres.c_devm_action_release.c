
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct action_devres {int data; int (* action ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static void devm_action_release(struct device *dev, void *res)
{
 struct action_devres *devres = res;

 devres->action(devres->data);
}

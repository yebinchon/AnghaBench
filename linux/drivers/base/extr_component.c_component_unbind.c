
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct master {int dev; } ;
struct component {int bound; int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* unbind ) (int ,int ,void*) ;} ;


 int WARN_ON (int) ;
 int devres_release_group (int ,struct component*) ;
 int stub1 (int ,int ,void*) ;

__attribute__((used)) static void component_unbind(struct component *component,
 struct master *master, void *data)
{
 WARN_ON(!component->bound);

 component->ops->unbind(component->dev, master->dev, data);
 component->bound = 0;


 devres_release_group(component->dev, component);
}

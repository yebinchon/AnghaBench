
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct master {int bound; int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* unbind ) (int ) ;} ;


 int devres_release_group (int ,int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void take_down_master(struct master *master)
{
 if (master->bound) {
  master->ops->unbind(master->dev);
  devres_release_group(master->dev, ((void*)0));
  master->bound = 0;
 }
}

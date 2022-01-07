
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* p; } ;
struct TYPE_2__ {int deferred_probe; int klist_children; struct device* device; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int klist_children_get ;
 int klist_children_put ;
 int klist_init (int *,int ,int ) ;
 TYPE_1__* kzalloc (int,int ) ;

__attribute__((used)) static int device_private_init(struct device *dev)
{
 dev->p = kzalloc(sizeof(*dev->p), GFP_KERNEL);
 if (!dev->p)
  return -ENOMEM;
 dev->p->device = dev;
 klist_init(&dev->p->klist_children, klist_children_get,
     klist_children_put);
 INIT_LIST_HEAD(&dev->p->deferred_probe);
 return 0;
}

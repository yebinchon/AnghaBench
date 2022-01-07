
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe {int dev; struct mutex* lock; struct probe** probes; int * get; int range; } ;
struct mutex {int dummy; } ;
struct kobj_map {int dev; struct mutex* lock; struct kobj_map** probes; int * get; int range; } ;
typedef int kobj_probe_t ;


 int GFP_KERNEL ;
 int kfree (struct probe*) ;
 struct probe* kmalloc (int,int ) ;
 struct probe* kzalloc (int,int ) ;

struct kobj_map *kobj_map_init(kobj_probe_t *base_probe, struct mutex *lock)
{
 struct kobj_map *p = kmalloc(sizeof(struct kobj_map), GFP_KERNEL);
 struct probe *base = kzalloc(sizeof(*base), GFP_KERNEL);
 int i;

 if ((p == ((void*)0)) || (base == ((void*)0))) {
  kfree(p);
  kfree(base);
  return ((void*)0);
 }

 base->dev = 1;
 base->range = ~0;
 base->get = base_probe;
 for (i = 0; i < 255; i++)
  p->probes[i] = base;
 p->lock = lock;
 return p;
}

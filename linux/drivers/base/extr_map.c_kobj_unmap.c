
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe {scalar_t__ dev; unsigned long range; struct probe* next; } ;
struct kobj_map {int lock; struct probe** probes; } ;
typedef scalar_t__ dev_t ;


 int MAJOR (scalar_t__) ;
 int kfree (struct probe*) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;

void kobj_unmap(struct kobj_map *domain, dev_t dev, unsigned long range)
{
 unsigned n = MAJOR(dev + range - 1) - MAJOR(dev) + 1;
 unsigned index = MAJOR(dev);
 unsigned i;
 struct probe *found = ((void*)0);

 if (n > 255)
  n = 255;

 mutex_lock(domain->lock);
 for (i = 0; i < n; i++, index++) {
  struct probe **s;
  for (s = &domain->probes[index % 255]; *s; s = &(*s)->next) {
   struct probe *p = *s;
   if (p->dev == dev && p->range == range) {
    *s = p->next;
    if (!found)
     found = p;
    break;
   }
  }
 }
 mutex_unlock(domain->lock);
 kfree(found);
}

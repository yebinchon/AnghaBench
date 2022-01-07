
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int gmap_asce; int gmap_list; } ;
struct mm_struct {TYPE_1__ context; } ;
struct gmap {unsigned long asce; int list; struct mm_struct* mm; } ;


 int WRITE_ONCE (int ,unsigned long) ;
 struct gmap* gmap_alloc (unsigned long) ;
 int list_add_rcu (int *,int *) ;
 scalar_t__ list_is_singular (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct gmap *gmap_create(struct mm_struct *mm, unsigned long limit)
{
 struct gmap *gmap;
 unsigned long gmap_asce;

 gmap = gmap_alloc(limit);
 if (!gmap)
  return ((void*)0);
 gmap->mm = mm;
 spin_lock(&mm->context.lock);
 list_add_rcu(&gmap->list, &mm->context.gmap_list);
 if (list_is_singular(&mm->context.gmap_list))
  gmap_asce = gmap->asce;
 else
  gmap_asce = -1UL;
 WRITE_ONCE(mm->context.gmap_asce, gmap_asce);
 spin_unlock(&mm->context.lock);
 return gmap;
}

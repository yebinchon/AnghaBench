
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nr_areas; int pages_per_area; int name; int lock; int active_pages; int active_entries; scalar_t__ active_area; int *** areas; } ;
typedef TYPE_1__ debug_info_t ;
typedef int debug_entry_t ;


 int EINVAL ;
 int ENOMEM ;
 int *** debug_areas_alloc (int,int) ;
 int debug_areas_free (TYPE_1__*) ;
 int memset (int ,int ,int) ;
 int pr_info (char*,int,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int debug_set_size(debug_info_t *id, int nr_areas, int pages_per_area)
{
 debug_entry_t ***new_areas;
 unsigned long flags;
 int rc = 0;

 if (!id || (nr_areas <= 0) || (pages_per_area < 0))
  return -EINVAL;
 if (pages_per_area > 0) {
  new_areas = debug_areas_alloc(pages_per_area, nr_areas);
  if (!new_areas) {
   pr_info("Allocating memory for %i pages failed\n",
    pages_per_area);
   rc = -ENOMEM;
   goto out;
  }
 } else {
  new_areas = ((void*)0);
 }
 spin_lock_irqsave(&id->lock, flags);
 debug_areas_free(id);
 id->areas = new_areas;
 id->nr_areas = nr_areas;
 id->pages_per_area = pages_per_area;
 id->active_area = 0;
 memset(id->active_entries, 0, sizeof(int)*id->nr_areas);
 memset(id->active_pages, 0, sizeof(int)*id->nr_areas);
 spin_unlock_irqrestore(&id->lock, flags);
 pr_info("%s: set new size (%i pages)\n", id->name, pages_per_area);
out:
 return rc;
}

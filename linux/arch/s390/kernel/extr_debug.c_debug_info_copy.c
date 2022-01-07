
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pages_per_area; scalar_t__ nr_areas; int lock; int ** areas; int level; int buf_size; int name; } ;
typedef TYPE_1__ debug_info_t ;


 int NO_AREAS ;
 int PAGE_SIZE ;
 TYPE_1__* debug_info_alloc (int ,int,scalar_t__,int ,int ,int) ;
 int debug_info_free (TYPE_1__*) ;
 int memcpy (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static debug_info_t *debug_info_copy(debug_info_t *in, int mode)
{
 unsigned long flags;
 debug_info_t *rc;
 int i, j;


 do {
  rc = debug_info_alloc(in->name, in->pages_per_area,
   in->nr_areas, in->buf_size, in->level, mode);
  spin_lock_irqsave(&in->lock, flags);
  if (!rc)
   goto out;

  if ((rc->pages_per_area == in->pages_per_area) &&
      (rc->nr_areas == in->nr_areas)) {
   break;
  }
  spin_unlock_irqrestore(&in->lock, flags);
  debug_info_free(rc);
 } while (1);

 if (mode == NO_AREAS)
  goto out;

 for (i = 0; i < in->nr_areas; i++) {
  for (j = 0; j < in->pages_per_area; j++)
   memcpy(rc->areas[i][j], in->areas[i][j], PAGE_SIZE);
 }
out:
 spin_unlock_irqrestore(&in->lock, flags);
 return rc;
}

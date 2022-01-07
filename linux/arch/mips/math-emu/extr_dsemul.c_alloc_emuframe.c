
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int bd_emupage_lock; scalar_t__ bd_emupage_allocmap; int bd_emupage_queue; } ;
typedef TYPE_2__ mm_context_t ;
struct TYPE_6__ {int pid; TYPE_1__* mm; } ;
struct TYPE_4__ {TYPE_2__ context; } ;


 int BD_EMUFRAME_NONE ;
 int BITS_TO_LONGS (int ) ;
 int GFP_ATOMIC ;
 int bitmap_find_free_region (scalar_t__,int ,int ) ;
 int bitmap_full (scalar_t__,int ) ;
 TYPE_3__* current ;
 int emupage_frame_count ;
 scalar_t__ kcalloc (int ,int,int ) ;
 int pr_debug (char*,int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event_killable (int ,int) ;

__attribute__((used)) static int alloc_emuframe(void)
{
 mm_context_t *mm_ctx = &current->mm->context;
 int idx;

retry:
 spin_lock(&mm_ctx->bd_emupage_lock);


 if (!mm_ctx->bd_emupage_allocmap) {
  mm_ctx->bd_emupage_allocmap =
   kcalloc(BITS_TO_LONGS(emupage_frame_count),
           sizeof(unsigned long),
    GFP_ATOMIC);

  if (!mm_ctx->bd_emupage_allocmap) {
   idx = BD_EMUFRAME_NONE;
   goto out_unlock;
  }
 }


 idx = bitmap_find_free_region(mm_ctx->bd_emupage_allocmap,
          emupage_frame_count, 0);
 if (idx < 0) {
  spin_unlock(&mm_ctx->bd_emupage_lock);
  if (!wait_event_killable(mm_ctx->bd_emupage_queue,
   !bitmap_full(mm_ctx->bd_emupage_allocmap,
         emupage_frame_count)))
   goto retry;


  return BD_EMUFRAME_NONE;
 }


 pr_debug("allocate emuframe %d to %d\n", idx, current->pid);
out_unlock:
 spin_unlock(&mm_ctx->bd_emupage_lock);
 return idx;
}

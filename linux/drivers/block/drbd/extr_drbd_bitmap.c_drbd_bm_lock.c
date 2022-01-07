
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drbd_device {struct drbd_bitmap* bitmap; } ;
struct drbd_bitmap {char* bm_why; int bm_flags; TYPE_1__* bm_task; int bm_change; } ;
typedef enum bm_flag { ____Placeholder_bm_flag } bm_flag ;
struct TYPE_3__ {int comm; } ;


 int BM_LOCKED_MASK ;
 TYPE_1__* current ;
 int drbd_err (struct drbd_device*,char*) ;
 int drbd_warn (struct drbd_device*,char*,int ,int ,char*,char*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_trylock (int *) ;
 int task_pid_nr (TYPE_1__*) ;

void drbd_bm_lock(struct drbd_device *device, char *why, enum bm_flag flags)
{
 struct drbd_bitmap *b = device->bitmap;
 int trylock_failed;

 if (!b) {
  drbd_err(device, "FIXME no bitmap in drbd_bm_lock!?\n");
  return;
 }

 trylock_failed = !mutex_trylock(&b->bm_change);

 if (trylock_failed) {
  drbd_warn(device, "%s[%d] going to '%s' but bitmap already locked for '%s' by %s[%d]\n",
     current->comm, task_pid_nr(current),
     why, b->bm_why ?: "?",
     b->bm_task->comm, task_pid_nr(b->bm_task));
  mutex_lock(&b->bm_change);
 }
 if (BM_LOCKED_MASK & b->bm_flags)
  drbd_err(device, "FIXME bitmap already locked in bm_lock\n");
 b->bm_flags |= flags & BM_LOCKED_MASK;

 b->bm_why = why;
 b->bm_task = current;
}

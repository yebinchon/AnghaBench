
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drbd_device {struct drbd_bitmap* bitmap; } ;
struct drbd_bitmap {TYPE_1__* bm_task; scalar_t__ bm_why; } ;
struct TYPE_3__ {int comm; } ;


 int __ratelimit (int *) ;
 TYPE_1__* current ;
 int drbd_err (struct drbd_device*,char*,int ,int ,char const*,char*,int ,int ) ;
 int drbd_ratelimit_state ;
 int task_pid_nr (TYPE_1__*) ;

__attribute__((used)) static void __bm_print_lock_info(struct drbd_device *device, const char *func)
{
 struct drbd_bitmap *b = device->bitmap;
 if (!__ratelimit(&drbd_ratelimit_state))
  return;
 drbd_err(device, "FIXME %s[%d] in %s, bitmap locked for '%s' by %s[%d]\n",
   current->comm, task_pid_nr(current),
   func, b->bm_why ?: "?",
   b->bm_task->comm, task_pid_nr(b->bm_task));
}

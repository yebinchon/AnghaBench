
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lc_element {scalar_t__ lc_number; } ;
struct drbd_device {int al_wait; TYPE_1__* act_log; } ;
struct TYPE_2__ {int nr_elements; int flags; } ;


 int D_ASSERT (struct drbd_device*,int ) ;
 scalar_t__ LC_FREE ;
 int __LC_LOCKED ;
 int _try_lc_del (struct drbd_device*,struct lc_element*) ;
 struct lc_element* lc_element_by_index (TYPE_1__*,int) ;
 int test_bit (int ,int *) ;
 int wait_event (int ,int ) ;
 int wake_up (int *) ;

void drbd_al_shrink(struct drbd_device *device)
{
 struct lc_element *al_ext;
 int i;

 D_ASSERT(device, test_bit(__LC_LOCKED, &device->act_log->flags));

 for (i = 0; i < device->act_log->nr_elements; i++) {
  al_ext = lc_element_by_index(device->act_log, i);
  if (al_ext->lc_number == LC_FREE)
   continue;
  wait_event(device->al_wait, _try_lc_del(device, al_ext));
 }

 wake_up(&device->al_wait);
}

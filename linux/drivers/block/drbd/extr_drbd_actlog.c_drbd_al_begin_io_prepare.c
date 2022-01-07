
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lc_element {unsigned int lc_number; } ;
struct drbd_interval {int sector; int size; } ;
struct drbd_device {int al_wait; int local_cnt; } ;


 int AL_EXTENT_SHIFT ;
 int D_ASSERT (struct drbd_device*,int) ;
 struct lc_element* _al_get (struct drbd_device*,unsigned int,int) ;
 scalar_t__ atomic_read (int *) ;
 int wait_event (int ,int ) ;

bool drbd_al_begin_io_prepare(struct drbd_device *device, struct drbd_interval *i)
{


 unsigned first = i->sector >> (AL_EXTENT_SHIFT-9);
 unsigned last = i->size == 0 ? first : (i->sector + (i->size >> 9) - 1) >> (AL_EXTENT_SHIFT-9);
 unsigned enr;
 bool need_transaction = 0;

 D_ASSERT(device, first <= last);
 D_ASSERT(device, atomic_read(&device->local_cnt) > 0);

 for (enr = first; enr <= last; enr++) {
  struct lc_element *al_ext;
  wait_event(device->al_wait,
    (al_ext = _al_get(device, enr, 0)) != ((void*)0));
  if (al_ext->lc_number != enr)
   need_transaction = 1;
 }
 return need_transaction;
}

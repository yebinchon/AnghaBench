
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_interval {int sector; int size; } ;
struct drbd_device {int local_cnt; } ;


 int AL_EXTENT_SHIFT ;
 int D_ASSERT (struct drbd_device*,int) ;
 int _al_get (struct drbd_device*,unsigned int,int) ;
 scalar_t__ atomic_read (int *) ;

bool drbd_al_begin_io_fastpath(struct drbd_device *device, struct drbd_interval *i)
{


 unsigned first = i->sector >> (AL_EXTENT_SHIFT-9);
 unsigned last = i->size == 0 ? first : (i->sector + (i->size >> 9) - 1) >> (AL_EXTENT_SHIFT-9);

 D_ASSERT(device, first <= last);
 D_ASSERT(device, atomic_read(&device->local_cnt) > 0);


 if (first != last)
  return 0;

 return _al_get(device, first, 1);
}

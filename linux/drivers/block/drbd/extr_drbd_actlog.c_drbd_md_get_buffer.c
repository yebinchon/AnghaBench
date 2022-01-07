
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char const* current_use; int page; scalar_t__ start_jif; scalar_t__ submit_jif; int in_use; } ;
struct TYPE_3__ {scalar_t__ disk; } ;
struct drbd_device {TYPE_2__ md_io; TYPE_1__ state; int misc_wait; } ;


 scalar_t__ D_FAILED ;
 int atomic_cmpxchg (int *,int ,int) ;
 scalar_t__ jiffies ;
 void* page_address (int ) ;
 int wait_event (int ,int) ;

void *drbd_md_get_buffer(struct drbd_device *device, const char *intent)
{
 int r;

 wait_event(device->misc_wait,
     (r = atomic_cmpxchg(&device->md_io.in_use, 0, 1)) == 0 ||
     device->state.disk <= D_FAILED);

 if (r)
  return ((void*)0);

 device->md_io.current_use = intent;
 device->md_io.start_jif = jiffies;
 device->md_io.submit_jif = device->md_io.start_jif - 1;
 return page_address(device->md_io.page);
}

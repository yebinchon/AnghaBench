
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {int misc_wait; } ;


 int inc_ap_bio_cond (struct drbd_device*) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static inline void inc_ap_bio(struct drbd_device *device)
{
 wait_event(device->misc_wait, inc_ap_bio_cond(device));
}

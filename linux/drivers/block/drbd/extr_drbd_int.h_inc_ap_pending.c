
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {int ap_pending_cnt; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void inc_ap_pending(struct drbd_device *device)
{
 atomic_inc(&device->ap_pending_cnt);
}

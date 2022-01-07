
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {scalar_t__ ov_last_oos_size; scalar_t__ ov_last_oos_start; } ;


 int drbd_err (struct drbd_device*,char*,unsigned long long,unsigned long) ;

__attribute__((used)) static inline void ov_out_of_sync_print(struct drbd_device *device)
{
 if (device->ov_last_oos_size) {
  drbd_err(device, "Out of sync: start=%llu, size=%lu (sectors)\n",
       (unsigned long long)device->ov_last_oos_start,
       (unsigned long)device->ov_last_oos_size);
 }
 device->ov_last_oos_size = 0;
}

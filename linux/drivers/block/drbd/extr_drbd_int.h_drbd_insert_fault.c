
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {int dummy; } ;


 scalar_t__ _drbd_insert_fault (struct drbd_device*,unsigned int) ;
 int drbd_enable_faults ;
 scalar_t__ drbd_fault_rate ;

__attribute__((used)) static inline int
drbd_insert_fault(struct drbd_device *device, unsigned int type) {





 return 0;

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b53_device {scalar_t__ chip_id; } ;


 scalar_t__ BCM53115_DEVICE_ID ;
 scalar_t__ BCM53125_DEVICE_ID ;
 scalar_t__ BCM53128_DEVICE_ID ;

__attribute__((used)) static inline int is531x5(struct b53_device *dev)
{
 return dev->chip_id == BCM53115_DEVICE_ID ||
  dev->chip_id == BCM53125_DEVICE_ID ||
  dev->chip_id == BCM53128_DEVICE_ID;
}

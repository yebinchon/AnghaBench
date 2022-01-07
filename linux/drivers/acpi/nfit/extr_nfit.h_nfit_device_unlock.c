
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int device_unlock (struct device*) ;

__attribute__((used)) static inline void nfit_device_unlock(struct device *dev)
{
 device_unlock(dev);
}

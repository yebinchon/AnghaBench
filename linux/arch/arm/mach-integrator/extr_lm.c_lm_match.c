
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int dummy; } ;



__attribute__((used)) static int lm_match(struct device *dev, struct device_driver *drv)
{
 return 1;
}

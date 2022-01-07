
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ENXIO ;

__attribute__((used)) static int platform_drv_probe_fail(struct device *_dev)
{
 return -ENXIO;
}

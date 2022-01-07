
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int async_cookie_t ;


 int device_resume (struct device*,int ,int) ;
 int pm_dev_err (struct device*,int ,char*,int) ;
 int pm_transition ;
 int put_device (struct device*) ;

__attribute__((used)) static void async_resume(void *data, async_cookie_t cookie)
{
 struct device *dev = (struct device *)data;
 int error;

 error = device_resume(dev, pm_transition, 1);
 if (error)
  pm_dev_err(dev, pm_transition, " async", error);
 put_device(dev);
}

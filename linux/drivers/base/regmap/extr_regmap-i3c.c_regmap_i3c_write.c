
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void const* out; } ;
struct i3c_priv_xfer {int rnw; size_t len; TYPE_1__ data; } ;
struct i3c_device {int dummy; } ;
struct device {int dummy; } ;


 struct i3c_device* dev_to_i3cdev (struct device*) ;
 int i3c_device_do_priv_xfers (struct i3c_device*,struct i3c_priv_xfer*,int) ;

__attribute__((used)) static int regmap_i3c_write(void *context, const void *data, size_t count)
{
 struct device *dev = context;
 struct i3c_device *i3c = dev_to_i3cdev(dev);
 struct i3c_priv_xfer xfers[] = {
  {
   .rnw = 0,
   .len = count,
   .data.out = data,
  },
 };

 return i3c_device_do_priv_xfers(i3c, xfers, 1);
}

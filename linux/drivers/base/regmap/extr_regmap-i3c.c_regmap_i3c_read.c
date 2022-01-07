
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* in; void const* out; } ;
struct i3c_priv_xfer {int rnw; size_t len; TYPE_1__ data; } ;
struct i3c_device {int dummy; } ;
struct device {int dummy; } ;


 struct i3c_device* dev_to_i3cdev (struct device*) ;
 int i3c_device_do_priv_xfers (struct i3c_device*,struct i3c_priv_xfer*,int) ;

__attribute__((used)) static int regmap_i3c_read(void *context,
      const void *reg, size_t reg_size,
      void *val, size_t val_size)
{
 struct device *dev = context;
 struct i3c_device *i3c = dev_to_i3cdev(dev);
 struct i3c_priv_xfer xfers[2];

 xfers[0].rnw = 0;
 xfers[0].len = reg_size;
 xfers[0].data.out = reg;

 xfers[1].rnw = 1;
 xfers[1].len = val_size;
 xfers[1].data.in = val;

 return i3c_device_do_priv_xfers(i3c, xfers, 2);
}

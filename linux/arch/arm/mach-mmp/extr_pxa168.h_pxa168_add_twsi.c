
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_device_desc {int dummy; } ;
struct i2c_pxa_platform_data {int dummy; } ;
struct i2c_board_info {int dummy; } ;


 int EINVAL ;
 int i2c_register_board_info (int,struct i2c_board_info*,unsigned int) ;
 struct pxa_device_desc pxa168_device_twsi0 ;
 struct pxa_device_desc pxa168_device_twsi1 ;
 int pxa_register_device (struct pxa_device_desc*,struct i2c_pxa_platform_data*,int) ;

__attribute__((used)) static inline int pxa168_add_twsi(int id, struct i2c_pxa_platform_data *data,
      struct i2c_board_info *info, unsigned size)
{
 struct pxa_device_desc *d = ((void*)0);
 int ret;

 switch (id) {
 case 0: d = &pxa168_device_twsi0; break;
 case 1: d = &pxa168_device_twsi1; break;
 default:
  return -EINVAL;
 }

 ret = i2c_register_board_info(id, info, size);
 if (ret)
  return ret;

 return pxa_register_device(d, data, sizeof(*data));
}

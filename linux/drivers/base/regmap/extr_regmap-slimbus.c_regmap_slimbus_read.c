
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct slim_device {int dummy; } ;


 int slim_read (struct slim_device*,int ,size_t,void*) ;

__attribute__((used)) static int regmap_slimbus_read(void *context, const void *reg, size_t reg_size,
          void *val, size_t val_size)
{
 struct slim_device *sdev = context;

 return slim_read(sdev, *(u16 *)reg, val_size, val);
}

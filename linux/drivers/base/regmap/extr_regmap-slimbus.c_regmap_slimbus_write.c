
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct slim_device {int dummy; } ;


 int slim_write (struct slim_device*,int ,size_t,int *) ;

__attribute__((used)) static int regmap_slimbus_write(void *context, const void *data, size_t count)
{
 struct slim_device *sdev = context;

 return slim_write(sdev, *(u16 *)data, count - 2, (u8 *)data + 2);
}

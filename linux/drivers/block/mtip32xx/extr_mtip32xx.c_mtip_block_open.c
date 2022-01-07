
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct driver_data {int dd_flag; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {scalar_t__ private_data; } ;


 int ENODEV ;
 int MTIP_DDF_REMOVAL_BIT ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int mtip_block_open(struct block_device *dev, fmode_t mode)
{
 struct driver_data *dd;

 if (dev && dev->bd_disk) {
  dd = (struct driver_data *) dev->bd_disk->private_data;

  if (dd) {
   if (test_bit(MTIP_DDF_REMOVAL_BIT,
       &dd->dd_flag)) {
    return -ENODEV;
   }
   return 0;
  }
 }
 return -ENODEV;
}

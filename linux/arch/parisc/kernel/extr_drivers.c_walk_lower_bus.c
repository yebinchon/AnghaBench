
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hw_type; } ;
struct parisc_device {int dev; TYPE_1__ id; } ;


 int BUS_CONVERTER (struct parisc_device*) ;
 int FLEX_MASK ;
 scalar_t__ HPHW_IOA ;
 scalar_t__ IS_LOWER_PORT (struct parisc_device*) ;
 unsigned long MAX_NATIVE_DEVICES ;
 unsigned long NATIVE_DEVICE_OFFSET ;
 int READ_IO_IO_HIGH (struct parisc_device*) ;
 int READ_IO_IO_LOW (struct parisc_device*) ;
 int walk_native_bus (unsigned long,unsigned long,int *) ;

__attribute__((used)) static void walk_lower_bus(struct parisc_device *dev)
{
 unsigned long io_io_low, io_io_high;

 if (!BUS_CONVERTER(dev) || IS_LOWER_PORT(dev))
  return;

 if (dev->id.hw_type == HPHW_IOA) {
  io_io_low = (unsigned long)(signed int)(READ_IO_IO_LOW(dev) << 16);
  io_io_high = io_io_low + MAX_NATIVE_DEVICES * NATIVE_DEVICE_OFFSET;
 } else {
  io_io_low = (READ_IO_IO_LOW(dev) + ~FLEX_MASK) & FLEX_MASK;
  io_io_high = (READ_IO_IO_HIGH(dev)+ ~FLEX_MASK) & FLEX_MASK;
 }

 walk_native_bus(io_io_low, io_io_high, &dev->dev);
}

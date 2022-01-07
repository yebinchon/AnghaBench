
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps3flash_private {int dirty; scalar_t__ tag; } ;
struct ps3_storage_device {int sbd; } ;


 struct ps3flash_private* ps3_system_bus_get_drvdata (int *) ;
 int ps3flash_read_write_sectors (struct ps3_storage_device*,scalar_t__,int) ;

__attribute__((used)) static int ps3flash_writeback(struct ps3_storage_device *dev)
{
 struct ps3flash_private *priv = ps3_system_bus_get_drvdata(&dev->sbd);
 int res;

 if (!priv->dirty || priv->tag < 0)
  return 0;

 res = ps3flash_read_write_sectors(dev, priv->tag, 1);
 if (res)
  return res;

 priv->dirty = 0;
 return 0;
}

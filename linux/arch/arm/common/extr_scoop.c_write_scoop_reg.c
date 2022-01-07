
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scoop_dev {scalar_t__ base; } ;
struct device {int dummy; } ;


 struct scoop_dev* dev_get_drvdata (struct device*) ;
 int iowrite16 (unsigned short,scalar_t__) ;

void write_scoop_reg(struct device *dev, unsigned short reg, unsigned short data)
{
 struct scoop_dev *sdev = dev_get_drvdata(dev);
 iowrite16(data, sdev->base + reg);
}

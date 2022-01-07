
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts5500_sbc {int jumpers; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct ts5500_sbc* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t jumpers_show(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct ts5500_sbc *sbc = dev_get_drvdata(dev);

 return sprintf(buf, "0x%.2x\n", sbc->jumpers >> 1);
}

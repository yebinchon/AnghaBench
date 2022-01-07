
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sata_ahci_read_temperature (struct device*,unsigned int*) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static ssize_t sata_ahci_show_temp(struct device *dev,
       struct device_attribute *da,
       char *buf)
{
 unsigned int temp = 0;
 int err;

 err = sata_ahci_read_temperature(dev, &temp);
 if (err < 0)
  return err;

 return sprintf(buf, "%u\n", temp);
}

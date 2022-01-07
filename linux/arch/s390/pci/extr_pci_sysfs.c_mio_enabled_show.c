
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*) ;
 int to_pci_dev (struct device*) ;
 struct zpci_dev* to_zpci (int ) ;
 scalar_t__ zpci_use_mio (struct zpci_dev*) ;

__attribute__((used)) static ssize_t mio_enabled_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct zpci_dev *zdev = to_zpci(to_pci_dev(dev));

 return sprintf(buf, zpci_use_mio(zdev) ? "1\n" : "0\n");
}

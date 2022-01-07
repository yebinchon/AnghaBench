
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expansion_card {scalar_t__ easi; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct expansion_card* ECARD_DEV (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t type_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct expansion_card *ec = ECARD_DEV(dev);
 return sprintf(buf, "%s\n", ec->easi ? "EASI" : "IOC");
}

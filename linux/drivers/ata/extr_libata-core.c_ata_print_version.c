
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int KERN_DEBUG ;
 int dev_printk (int ,struct device const*,char*,char const*) ;

void ata_print_version(const struct device *dev, const char *version)
{
 dev_printk(KERN_DEBUG, dev, "version %s\n", version);
}

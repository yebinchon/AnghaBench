
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int ppi_version; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ) ;
 struct tpm_chip* to_tpm_chip (struct device*) ;

__attribute__((used)) static ssize_t tpm_show_ppi_version(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct tpm_chip *chip = to_tpm_chip(dev);

 return scnprintf(buf, PAGE_SIZE, "%s\n", chip->ppi_version);
}

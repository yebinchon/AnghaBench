
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t si_type; } ;
struct smi_info {TYPE_1__ io; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct smi_info* dev_get_drvdata (struct device*) ;
 char** si_to_str ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static ssize_t type_show(struct device *dev,
    struct device_attribute *attr,
    char *buf)
{
 struct smi_info *smi_info = dev_get_drvdata(dev);

 return snprintf(buf, 10, "%s\n", si_to_str[smi_info->io.si_type]);
}

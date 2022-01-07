
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t si_type; size_t addr_space; int slave_addr; int irq; int regshift; int regsize; int regspacing; int addr_data; } ;
struct smi_info {TYPE_1__ io; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char** addr_space_to_str ;
 struct smi_info* dev_get_drvdata (struct device*) ;
 char** si_to_str ;
 int snprintf (char*,int,char*,char*,char*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static ssize_t params_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct smi_info *smi_info = dev_get_drvdata(dev);

 return snprintf(buf, 200,
   "%s,%s,0x%lx,rsp=%d,rsi=%d,rsh=%d,irq=%d,ipmb=%d\n",
   si_to_str[smi_info->io.si_type],
   addr_space_to_str[smi_info->io.addr_space],
   smi_info->io.addr_data,
   smi_info->io.regspacing,
   smi_info->io.regsize,
   smi_info->io.regshift,
   smi_info->io.irq,
   smi_info->io.slave_addr);
}

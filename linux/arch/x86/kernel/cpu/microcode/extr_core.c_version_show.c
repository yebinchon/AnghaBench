
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; } ;
struct ucode_cpu_info {TYPE_1__ cpu_sig; } ;
struct device_attribute {int dummy; } ;
struct device {int id; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct ucode_cpu_info* ucode_cpu_info ;

__attribute__((used)) static ssize_t version_show(struct device *dev,
   struct device_attribute *attr, char *buf)
{
 struct ucode_cpu_info *uci = ucode_cpu_info + dev->id;

 return sprintf(buf, "0x%x\n", uci->cpu_sig.rev);
}

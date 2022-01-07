
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ state; } ;


 int sprintf (char*,char*,...) ;
 TYPE_1__ ts78xx_fpga ;

__attribute__((used)) static ssize_t ts78xx_fpga_show(struct kobject *kobj,
   struct kobj_attribute *attr, char *buf)
{
 if (ts78xx_fpga.state < 0)
  return sprintf(buf, "borked\n");

 return sprintf(buf, "%s\n", (ts78xx_fpga.state) ? "online" : "offline");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_6__ {int devno; } ;
struct TYPE_5__ {int ssid; int devno; } ;
struct TYPE_8__ {TYPE_2__ fcp; TYPE_1__ ccw; } ;
struct TYPE_7__ {int type; } ;





 TYPE_4__ ipl_block ;
 TYPE_3__ ipl_info ;
 int sprintf (char*,char*,int,...) ;

__attribute__((used)) static ssize_t sys_ipl_device_show(struct kobject *kobj,
       struct kobj_attribute *attr, char *page)
{
 switch (ipl_info.type) {
 case 130:
  return sprintf(page, "0.%x.%04x\n", ipl_block.ccw.ssid,
          ipl_block.ccw.devno);
 case 129:
 case 128:
  return sprintf(page, "0.0.%04x\n", ipl_block.fcp.devno);
 default:
  return 0;
 }
}

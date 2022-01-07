
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int version; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;


 TYPE_2__ boot_params ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t version_show(struct kobject *kobj,
       struct kobj_attribute *attr, char *buf)
{
 return sprintf(buf, "0x%04x\n", boot_params.hdr.version);
}

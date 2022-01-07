
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int name; } ;
struct device_attribute {TYPE_1__ attr; int show; int store; } ;
struct device {int kobj; } ;


 int S_IRUGO ;
 int S_IWUGO ;
 int WARN (int,char*,int ) ;
 int sysfs_create_file (int *,TYPE_1__*) ;

int device_create_file(struct device *dev,
         const struct device_attribute *attr)
{
 int error = 0;

 if (dev) {
  WARN(((attr->attr.mode & S_IWUGO) && !attr->store),
   "Attribute %s: write permission without 'store'\n",
   attr->attr.name);
  WARN(((attr->attr.mode & S_IRUGO) && !attr->show),
   "Attribute %s: read permission without 'show'\n",
   attr->attr.name);
  error = sysfs_create_file(&dev->kobj, &attr->attr);
 }

 return error;
}

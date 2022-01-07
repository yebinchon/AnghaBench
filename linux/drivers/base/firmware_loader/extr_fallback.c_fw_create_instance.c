
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int groups; int * class; struct device* parent; } ;
struct fw_sysfs {int nowait; struct device dev; struct firmware* fw; } ;
struct firmware {int dummy; } ;
typedef enum fw_opt { ____Placeholder_fw_opt } fw_opt ;


 int ENOMEM ;
 struct fw_sysfs* ERR_PTR (int ) ;
 int FW_OPT_NOWAIT ;
 int GFP_KERNEL ;
 int dev_set_name (struct device*,char*,char const*) ;
 int device_initialize (struct device*) ;
 int firmware_class ;
 int fw_dev_attr_groups ;
 struct fw_sysfs* kzalloc (int,int ) ;

__attribute__((used)) static struct fw_sysfs *
fw_create_instance(struct firmware *firmware, const char *fw_name,
     struct device *device, enum fw_opt opt_flags)
{
 struct fw_sysfs *fw_sysfs;
 struct device *f_dev;

 fw_sysfs = kzalloc(sizeof(*fw_sysfs), GFP_KERNEL);
 if (!fw_sysfs) {
  fw_sysfs = ERR_PTR(-ENOMEM);
  goto exit;
 }

 fw_sysfs->nowait = !!(opt_flags & FW_OPT_NOWAIT);
 fw_sysfs->fw = firmware;
 f_dev = &fw_sysfs->dev;

 device_initialize(f_dev);
 dev_set_name(f_dev, "%s", fw_name);
 f_dev->parent = device;
 f_dev->class = &firmware_class;
 f_dev->groups = fw_dev_attr_groups;
exit:
 return fw_sysfs;
}

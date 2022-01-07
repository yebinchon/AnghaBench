
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; struct ssif_addr_info* platform_data; int type; } ;
struct ssif_addr_info {int debug; int slave_addr; int addr_src; int link; struct device* dev; TYPE_1__ binfo; int adapter_name; } ;
struct device {int dummy; } ;
typedef enum ipmi_addr_src { ____Placeholder_ipmi_addr_src } ipmi_addr_src ;


 int DEVICE_NAME ;
 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_drvdata (struct device*,struct ssif_addr_info*) ;
 int i2c_for_each_dev (struct ssif_addr_info*,int ) ;
 scalar_t__ initialized ;
 int kfree (struct ssif_addr_info*) ;
 int kstrdup (char*,int ) ;
 struct ssif_addr_info* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ssif_adapter_handler ;
 scalar_t__ ssif_info_find (int,char*,int) ;
 int ssif_infos ;
 int ssif_infos_mutex ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static int new_ssif_client(int addr, char *adapter_name,
      int debug, int slave_addr,
      enum ipmi_addr_src addr_src,
      struct device *dev)
{
 struct ssif_addr_info *addr_info;
 int rv = 0;

 mutex_lock(&ssif_infos_mutex);
 if (ssif_info_find(addr, adapter_name, 0)) {
  rv = -EEXIST;
  goto out_unlock;
 }

 addr_info = kzalloc(sizeof(*addr_info), GFP_KERNEL);
 if (!addr_info) {
  rv = -ENOMEM;
  goto out_unlock;
 }

 if (adapter_name) {
  addr_info->adapter_name = kstrdup(adapter_name, GFP_KERNEL);
  if (!addr_info->adapter_name) {
   kfree(addr_info);
   rv = -ENOMEM;
   goto out_unlock;
  }
 }

 strncpy(addr_info->binfo.type, DEVICE_NAME,
  sizeof(addr_info->binfo.type));
 addr_info->binfo.addr = addr;
 addr_info->binfo.platform_data = addr_info;
 addr_info->debug = debug;
 addr_info->slave_addr = slave_addr;
 addr_info->addr_src = addr_src;
 addr_info->dev = dev;

 if (dev)
  dev_set_drvdata(dev, addr_info);

 list_add_tail(&addr_info->link, &ssif_infos);

 if (initialized)
  i2c_for_each_dev(addr_info, ssif_adapter_handler);


out_unlock:
 mutex_unlock(&ssif_infos_mutex);
 return rv;
}

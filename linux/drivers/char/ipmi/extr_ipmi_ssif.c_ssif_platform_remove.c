
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssif_addr_info {int link; int added_client; } ;
struct platform_device {int dev; } ;


 struct ssif_addr_info* dev_get_drvdata (int *) ;
 int i2c_unregister_device (int ) ;
 int kfree (struct ssif_addr_info*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ssif_infos_mutex ;

__attribute__((used)) static int ssif_platform_remove(struct platform_device *dev)
{
 struct ssif_addr_info *addr_info = dev_get_drvdata(&dev->dev);

 if (!addr_info)
  return 0;

 mutex_lock(&ssif_infos_mutex);
 i2c_unregister_device(addr_info->added_client);

 list_del(&addr_info->link);
 kfree(addr_info);
 mutex_unlock(&ssif_infos_mutex);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrtl_device_info {struct btrtl_device_info* cfg_data; struct btrtl_device_info* fw_data; } ;


 int kfree (struct btrtl_device_info*) ;

void btrtl_free(struct btrtl_device_info *btrtl_dev)
{
 kfree(btrtl_dev->fw_data);
 kfree(btrtl_dev->cfg_data);
 kfree(btrtl_dev);
}

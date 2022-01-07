
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_priv {int ref; int fw_name; TYPE_1__* fwc; int size; } ;
struct firmware {struct fw_priv* priv; } ;
struct device {int dummy; } ;
typedef enum fw_opt { ____Placeholder_fw_opt } fw_opt ;
struct TYPE_2__ {scalar_t__ state; } ;


 int ENOENT ;
 scalar_t__ FW_LOADER_START_CACHE ;
 int FW_OPT_NOCACHE ;
 int FW_OPT_UEVENT ;
 int fw_add_devm_name (struct device*,int ) ;
 scalar_t__ fw_cache_piggyback_on_request (int ) ;
 int fw_lock ;
 int fw_set_page_data (struct fw_priv*,struct firmware*) ;
 scalar_t__ fw_state_is_aborted (struct fw_priv*) ;
 int kref_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int assign_fw(struct firmware *fw, struct device *device,
       enum fw_opt opt_flags)
{
 struct fw_priv *fw_priv = fw->priv;
 int ret;

 mutex_lock(&fw_lock);
 if (!fw_priv->size || fw_state_is_aborted(fw_priv)) {
  mutex_unlock(&fw_lock);
  return -ENOENT;
 }
 if (device && (opt_flags & FW_OPT_UEVENT) &&
     !(opt_flags & FW_OPT_NOCACHE)) {
  ret = fw_add_devm_name(device, fw_priv->fw_name);
  if (ret) {
   mutex_unlock(&fw_lock);
   return ret;
  }
 }





 if (!(opt_flags & FW_OPT_NOCACHE) &&
     fw_priv->fwc->state == FW_LOADER_START_CACHE) {
  if (fw_cache_piggyback_on_request(fw_priv->fw_name))
   kref_get(&fw_priv->ref);
 }


 fw_set_page_data(fw_priv, fw);
 mutex_unlock(&fw_lock);
 return 0;
}

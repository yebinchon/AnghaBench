
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct start_ov_parms {int ov_start_sector; int ov_stop_sector; } ;
struct sk_buff {int dummy; } ;
struct genl_info {scalar_t__* attrs; } ;
struct drbd_device {int ov_start_sector; int flags; int misc_wait; int ov_stop_sector; } ;
struct drbd_config_context {TYPE_1__* resource; int reply_skb; struct drbd_device* device; } ;
typedef enum drbd_ret_code { ____Placeholder_drbd_ret_code } drbd_ret_code ;
struct TYPE_2__ {int adm_mutex; } ;


 int BITMAP_IO ;
 int BM_SECT_PER_BIT ;
 int C_VERIFY_S ;
 int DRBD_ADM_NEED_MINOR ;
 size_t DRBD_NLA_START_OV_PARMS ;
 int ERR_MANDATORY_TAG ;
 int NO_ERROR ;
 int NS (int ,int ) ;
 int ULLONG_MAX ;
 int conn ;
 int drbd_adm_finish (struct drbd_config_context*,struct genl_info*,int) ;
 int drbd_adm_prepare (struct drbd_config_context*,struct sk_buff*,struct genl_info*,int ) ;
 int drbd_msg_put_info (int ,int ) ;
 int drbd_request_state (struct drbd_device*,int ) ;
 int drbd_resume_io (struct drbd_device*) ;
 int drbd_suspend_io (struct drbd_device*) ;
 int from_attrs_err_to_txt (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int start_ov_parms_from_attrs (struct start_ov_parms*,struct genl_info*) ;
 int test_bit (int ,int *) ;
 int wait_event (int ,int) ;

int drbd_adm_start_ov(struct sk_buff *skb, struct genl_info *info)
{
 struct drbd_config_context adm_ctx;
 struct drbd_device *device;
 enum drbd_ret_code retcode;
 struct start_ov_parms parms;

 retcode = drbd_adm_prepare(&adm_ctx, skb, info, DRBD_ADM_NEED_MINOR);
 if (!adm_ctx.reply_skb)
  return retcode;
 if (retcode != NO_ERROR)
  goto out;

 device = adm_ctx.device;


 parms.ov_start_sector = device->ov_start_sector;
 parms.ov_stop_sector = ULLONG_MAX;
 if (info->attrs[DRBD_NLA_START_OV_PARMS]) {
  int err = start_ov_parms_from_attrs(&parms, info);
  if (err) {
   retcode = ERR_MANDATORY_TAG;
   drbd_msg_put_info(adm_ctx.reply_skb, from_attrs_err_to_txt(err));
   goto out;
  }
 }
 mutex_lock(&adm_ctx.resource->adm_mutex);


 device->ov_start_sector = parms.ov_start_sector & ~(BM_SECT_PER_BIT-1);
 device->ov_stop_sector = parms.ov_stop_sector;



 drbd_suspend_io(device);
 wait_event(device->misc_wait, !test_bit(BITMAP_IO, &device->flags));
 retcode = drbd_request_state(device, NS(conn, C_VERIFY_S));
 drbd_resume_io(device);

 mutex_unlock(&adm_ctx.resource->adm_mutex);
out:
 drbd_adm_finish(&adm_ctx, info, retcode);
 return 0;
}

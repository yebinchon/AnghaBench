
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct set_role_parms {int assume_uptodate; } ;
struct genl_info {TYPE_1__* genlhdr; scalar_t__* attrs; } ;
struct drbd_config_context {TYPE_2__* resource; int device; int reply_skb; } ;
typedef int parms ;
typedef enum drbd_ret_code { ____Placeholder_drbd_ret_code } drbd_ret_code ;
struct TYPE_4__ {int adm_mutex; } ;
struct TYPE_3__ {scalar_t__ cmd; } ;


 int DRBD_ADM_NEED_MINOR ;
 scalar_t__ DRBD_ADM_PRIMARY ;
 size_t DRBD_NLA_SET_ROLE_PARMS ;
 int ERR_MANDATORY_TAG ;
 int NO_ERROR ;
 int R_PRIMARY ;
 int R_SECONDARY ;
 int drbd_adm_finish (struct drbd_config_context*,struct genl_info*,int) ;
 int drbd_adm_prepare (struct drbd_config_context*,struct sk_buff*,struct genl_info*,int ) ;
 int drbd_msg_put_info (int ,int ) ;
 int drbd_set_role (int ,int ,int ) ;
 int from_attrs_err_to_txt (int) ;
 int genl_lock () ;
 int genl_unlock () ;
 int memset (struct set_role_parms*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_role_parms_from_attrs (struct set_role_parms*,struct genl_info*) ;

int drbd_adm_set_role(struct sk_buff *skb, struct genl_info *info)
{
 struct drbd_config_context adm_ctx;
 struct set_role_parms parms;
 int err;
 enum drbd_ret_code retcode;

 retcode = drbd_adm_prepare(&adm_ctx, skb, info, DRBD_ADM_NEED_MINOR);
 if (!adm_ctx.reply_skb)
  return retcode;
 if (retcode != NO_ERROR)
  goto out;

 memset(&parms, 0, sizeof(parms));
 if (info->attrs[DRBD_NLA_SET_ROLE_PARMS]) {
  err = set_role_parms_from_attrs(&parms, info);
  if (err) {
   retcode = ERR_MANDATORY_TAG;
   drbd_msg_put_info(adm_ctx.reply_skb, from_attrs_err_to_txt(err));
   goto out;
  }
 }
 genl_unlock();
 mutex_lock(&adm_ctx.resource->adm_mutex);

 if (info->genlhdr->cmd == DRBD_ADM_PRIMARY)
  retcode = drbd_set_role(adm_ctx.device, R_PRIMARY, parms.assume_uptodate);
 else
  retcode = drbd_set_role(adm_ctx.device, R_SECONDARY, 0);

 mutex_unlock(&adm_ctx.resource->adm_mutex);
 genl_lock();
out:
 drbd_adm_finish(&adm_ctx, info, retcode);
 return 0;
}

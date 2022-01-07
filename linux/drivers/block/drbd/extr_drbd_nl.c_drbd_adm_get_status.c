
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;
struct drbd_config_context {int reply_skb; int device; } ;
typedef enum drbd_ret_code { ____Placeholder_drbd_ret_code } drbd_ret_code ;


 int DRBD_ADM_NEED_MINOR ;
 int NO_ERROR ;
 int drbd_adm_finish (struct drbd_config_context*,struct genl_info*,int) ;
 int drbd_adm_prepare (struct drbd_config_context*,struct sk_buff*,struct genl_info*,int ) ;
 int nla_put_status_info (int ,int ,int *) ;
 int nlmsg_free (int ) ;

int drbd_adm_get_status(struct sk_buff *skb, struct genl_info *info)
{
 struct drbd_config_context adm_ctx;
 enum drbd_ret_code retcode;
 int err;

 retcode = drbd_adm_prepare(&adm_ctx, skb, info, DRBD_ADM_NEED_MINOR);
 if (!adm_ctx.reply_skb)
  return retcode;
 if (retcode != NO_ERROR)
  goto out;

 err = nla_put_status_info(adm_ctx.reply_skb, adm_ctx.device, ((void*)0));
 if (err) {
  nlmsg_free(adm_ctx.reply_skb);
  return err;
 }
out:
 drbd_adm_finish(&adm_ctx, info, retcode);
 return 0;
}

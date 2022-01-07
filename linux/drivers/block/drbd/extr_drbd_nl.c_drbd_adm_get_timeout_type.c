
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeout_parms {int timeout_type; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;
struct drbd_config_context {int reply_skb; TYPE_2__* device; } ;
typedef enum drbd_ret_code { ____Placeholder_drbd_ret_code } drbd_ret_code ;
struct TYPE_3__ {scalar_t__ pdsk; } ;
struct TYPE_4__ {int flags; TYPE_1__ state; } ;


 int DRBD_ADM_NEED_MINOR ;
 scalar_t__ D_OUTDATED ;
 int NO_ERROR ;
 int USE_DEGR_WFC_T ;
 int UT_DEFAULT ;
 int UT_DEGRADED ;
 int UT_PEER_OUTDATED ;
 int drbd_adm_finish (struct drbd_config_context*,struct genl_info*,int) ;
 int drbd_adm_prepare (struct drbd_config_context*,struct sk_buff*,struct genl_info*,int ) ;
 int nlmsg_free (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int timeout_parms_to_priv_skb (int ,struct timeout_parms*) ;

int drbd_adm_get_timeout_type(struct sk_buff *skb, struct genl_info *info)
{
 struct drbd_config_context adm_ctx;
 enum drbd_ret_code retcode;
 struct timeout_parms tp;
 int err;

 retcode = drbd_adm_prepare(&adm_ctx, skb, info, DRBD_ADM_NEED_MINOR);
 if (!adm_ctx.reply_skb)
  return retcode;
 if (retcode != NO_ERROR)
  goto out;

 tp.timeout_type =
  adm_ctx.device->state.pdsk == D_OUTDATED ? UT_PEER_OUTDATED :
  test_bit(USE_DEGR_WFC_T, &adm_ctx.device->flags) ? UT_DEGRADED :
  UT_DEFAULT;

 err = timeout_parms_to_priv_skb(adm_ctx.reply_skb, &tp);
 if (err) {
  nlmsg_free(adm_ctx.reply_skb);
  return err;
 }
out:
 drbd_adm_finish(&adm_ctx, info, retcode);
 return 0;
}

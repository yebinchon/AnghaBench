
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union drbd_state {int dummy; } drbd_state ;
struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;
struct drbd_config_context {TYPE_1__* resource; int device; int reply_skb; } ;
typedef enum drbd_ret_code { ____Placeholder_drbd_ret_code } drbd_ret_code ;
struct TYPE_2__ {int adm_mutex; } ;


 int DRBD_ADM_NEED_MINOR ;
 int NO_ERROR ;
 int drbd_adm_finish (struct drbd_config_context*,struct genl_info*,int) ;
 int drbd_adm_prepare (struct drbd_config_context*,struct sk_buff*,struct genl_info*,int ) ;
 int drbd_request_state (int ,union drbd_state,union drbd_state) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int drbd_adm_simple_request_state(struct sk_buff *skb, struct genl_info *info,
  union drbd_state mask, union drbd_state val)
{
 struct drbd_config_context adm_ctx;
 enum drbd_ret_code retcode;

 retcode = drbd_adm_prepare(&adm_ctx, skb, info, DRBD_ADM_NEED_MINOR);
 if (!adm_ctx.reply_skb)
  return retcode;
 if (retcode != NO_ERROR)
  goto out;

 mutex_lock(&adm_ctx.resource->adm_mutex);
 retcode = drbd_request_state(adm_ctx.device, mask, val);
 mutex_unlock(&adm_ctx.resource->adm_mutex);
out:
 drbd_adm_finish(&adm_ctx, info, retcode);
 return 0;
}

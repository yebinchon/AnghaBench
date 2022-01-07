
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct genl_info {scalar_t__* attrs; } ;
struct drbd_connection {int dummy; } ;
struct drbd_config_context {TYPE_1__* resource; int reply_skb; struct drbd_connection* connection; } ;
struct disconnect_parms {int force_disconnect; } ;
typedef int parms ;
typedef enum drbd_state_rv { ____Placeholder_drbd_state_rv } drbd_state_rv ;
typedef enum drbd_ret_code { ____Placeholder_drbd_ret_code } drbd_ret_code ;
struct TYPE_2__ {int adm_mutex; } ;


 int DRBD_ADM_NEED_CONNECTION ;
 size_t DRBD_NLA_DISCONNECT_PARMS ;
 int ERR_MANDATORY_TAG ;
 int NO_ERROR ;
 int SS_SUCCESS ;
 int conn_try_disconnect (struct drbd_connection*,int ) ;
 int disconnect_parms_from_attrs (struct disconnect_parms*,struct genl_info*) ;
 int drbd_adm_finish (struct drbd_config_context*,struct genl_info*,int) ;
 int drbd_adm_prepare (struct drbd_config_context*,struct sk_buff*,struct genl_info*,int ) ;
 int drbd_msg_put_info (int ,int ) ;
 int from_attrs_err_to_txt (int) ;
 int memset (struct disconnect_parms*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int drbd_adm_disconnect(struct sk_buff *skb, struct genl_info *info)
{
 struct drbd_config_context adm_ctx;
 struct disconnect_parms parms;
 struct drbd_connection *connection;
 enum drbd_state_rv rv;
 enum drbd_ret_code retcode;
 int err;

 retcode = drbd_adm_prepare(&adm_ctx, skb, info, DRBD_ADM_NEED_CONNECTION);
 if (!adm_ctx.reply_skb)
  return retcode;
 if (retcode != NO_ERROR)
  goto fail;

 connection = adm_ctx.connection;
 memset(&parms, 0, sizeof(parms));
 if (info->attrs[DRBD_NLA_DISCONNECT_PARMS]) {
  err = disconnect_parms_from_attrs(&parms, info);
  if (err) {
   retcode = ERR_MANDATORY_TAG;
   drbd_msg_put_info(adm_ctx.reply_skb, from_attrs_err_to_txt(err));
   goto fail;
  }
 }

 mutex_lock(&adm_ctx.resource->adm_mutex);
 rv = conn_try_disconnect(connection, parms.force_disconnect);
 if (rv < SS_SUCCESS)
  retcode = rv;
 else
  retcode = NO_ERROR;
 mutex_unlock(&adm_ctx.resource->adm_mutex);
 fail:
 drbd_adm_finish(&adm_ctx, info, retcode);
 return 0;
}

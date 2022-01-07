
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct genl_info {int dummy; } ;
struct drbd_config_context {int reply_skb; TYPE_3__* reply_dh; TYPE_2__* resource; TYPE_1__* connection; TYPE_4__* device; } ;
struct TYPE_8__ {int kref; } ;
struct TYPE_7__ {int ret_code; } ;
struct TYPE_6__ {int kref; } ;
struct TYPE_5__ {int kref; } ;


 int ENOMEM ;
 int drbd_adm_send_reply (int ,struct genl_info*) ;
 int drbd_destroy_connection ;
 int * drbd_destroy_device ;
 int * drbd_destroy_resource ;
 int kref_put (int *,int *) ;

__attribute__((used)) static int drbd_adm_finish(struct drbd_config_context *adm_ctx,
 struct genl_info *info, int retcode)
{
 if (adm_ctx->device) {
  kref_put(&adm_ctx->device->kref, drbd_destroy_device);
  adm_ctx->device = ((void*)0);
 }
 if (adm_ctx->connection) {
  kref_put(&adm_ctx->connection->kref, &drbd_destroy_connection);
  adm_ctx->connection = ((void*)0);
 }
 if (adm_ctx->resource) {
  kref_put(&adm_ctx->resource->kref, drbd_destroy_resource);
  adm_ctx->resource = ((void*)0);
 }

 if (!adm_ctx->reply_skb)
  return -ENOMEM;

 adm_ctx->reply_dh->ret_code = retcode;
 drbd_adm_send_reply(adm_ctx->reply_skb, info);
 return 0;
}

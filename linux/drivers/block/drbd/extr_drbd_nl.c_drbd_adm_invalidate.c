
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;
struct TYPE_6__ {scalar_t__ conn; scalar_t__ role; } ;
struct drbd_device {TYPE_2__ state; int flags; int misc_wait; } ;
struct drbd_config_context {TYPE_3__* resource; struct drbd_device* device; int reply_skb; } ;
struct TYPE_8__ {TYPE_1__* connection; } ;
struct TYPE_7__ {int adm_mutex; } ;
struct TYPE_5__ {int sender_work; } ;


 int BITMAP_IO ;
 int BM_LOCKED_MASK ;
 scalar_t__ C_STANDALONE ;
 int C_STARTING_SYNC_T ;
 int DRBD_ADM_NEED_MINOR ;
 int D_INCONSISTENT ;
 int ERR_IO_MD_DISK ;
 int ERR_NO_DISK ;
 int NO_ERROR ;
 int NS (int ,int ) ;
 scalar_t__ R_SECONDARY ;
 int SS_SUCCESS ;
 int conn ;
 int disk ;
 int drbd_adm_finish (struct drbd_config_context*,struct genl_info*,int) ;
 int drbd_adm_prepare (struct drbd_config_context*,struct sk_buff*,struct genl_info*,int ) ;
 scalar_t__ drbd_bitmap_io (struct drbd_device*,int *,char*,int ) ;
 int drbd_bmio_set_n_write ;
 int drbd_flush_workqueue (int *) ;
 int drbd_request_state (struct drbd_device*,int ) ;
 int drbd_resume_io (struct drbd_device*) ;
 int drbd_suspend_io (struct drbd_device*) ;
 TYPE_4__* first_peer_device (struct drbd_device*) ;
 int get_ldev (struct drbd_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_ldev (struct drbd_device*) ;
 int test_bit (int ,int *) ;
 int wait_event (int ,int) ;

int drbd_adm_invalidate(struct sk_buff *skb, struct genl_info *info)
{
 struct drbd_config_context adm_ctx;
 struct drbd_device *device;
 int retcode;

 retcode = drbd_adm_prepare(&adm_ctx, skb, info, DRBD_ADM_NEED_MINOR);
 if (!adm_ctx.reply_skb)
  return retcode;
 if (retcode != NO_ERROR)
  goto out;

 device = adm_ctx.device;
 if (!get_ldev(device)) {
  retcode = ERR_NO_DISK;
  goto out;
 }

 mutex_lock(&adm_ctx.resource->adm_mutex);




 drbd_suspend_io(device);
 wait_event(device->misc_wait, !test_bit(BITMAP_IO, &device->flags));
 drbd_flush_workqueue(&first_peer_device(device)->connection->sender_work);





 if (device->state.conn == C_STANDALONE && device->state.role == R_SECONDARY) {
  retcode = drbd_request_state(device, NS(disk, D_INCONSISTENT));
  if (retcode >= SS_SUCCESS) {
   if (drbd_bitmap_io(device, &drbd_bmio_set_n_write,
    "set_n_write from invalidate", BM_LOCKED_MASK))
    retcode = ERR_IO_MD_DISK;
  }
 } else
  retcode = drbd_request_state(device, NS(conn, C_STARTING_SYNC_T));
 drbd_resume_io(device);
 mutex_unlock(&adm_ctx.resource->adm_mutex);
 put_ldev(device);
out:
 drbd_adm_finish(&adm_ctx, info, retcode);
 return 0;
}

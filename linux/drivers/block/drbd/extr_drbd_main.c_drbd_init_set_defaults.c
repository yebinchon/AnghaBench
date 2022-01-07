
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int cb; int list; } ;
struct TYPE_10__ {TYPE_4__ w; } ;
struct TYPE_8__ {int cb; int list; } ;
struct TYPE_7__ {int cb; int list; } ;
struct TYPE_6__ {int in_use; } ;
struct drbd_device {void* local_max_bio_size; void* peer_max_bio_size; int resync_wenr; int seq_wait; int al_wait; int ee_wait; int state_wait; int misc_wait; int request_timer; int start_resync_timer; int md_sync_timer; int resync_timer; TYPE_5__ bm_io_work; TYPE_3__ unplug_work; TYPE_2__ resync_work; int * pending_completion; int * pending_master_completion; int resync_reads; int net_ee; int read_ee; int done_ee; int sync_ee; int active_ee; int peer_seq_lock; int al_lock; int own_state_mutex; int * state_mutex; TYPE_1__ md_io; int ap_in_flight; int rs_sect_ev; int rs_sect_in; int pp_in_use_by_net; int local_cnt; int unacked_cnt; int rs_pending_cnt; int ap_pending_cnt; int ap_actlog_cnt; int ap_bio_cnt; } ;


 void* DRBD_MAX_BIO_SIZE_SAFE ;
 int INIT_LIST_HEAD (int *) ;
 int LC_FREE ;
 int atomic_set (int *,int ) ;
 int drbd_set_defaults (struct drbd_device*) ;
 int init_waitqueue_head (int *) ;
 int md_sync_timer_fn ;
 int mutex_init (int *) ;
 int request_timer_fn ;
 int resync_timer_fn ;
 int spin_lock_init (int *) ;
 int start_resync_timer_fn ;
 int timer_setup (int *,int ,int ) ;
 int w_bitmap_io ;
 int w_resync_timer ;
 int w_send_write_hint ;

void drbd_init_set_defaults(struct drbd_device *device)
{



 drbd_set_defaults(device);

 atomic_set(&device->ap_bio_cnt, 0);
 atomic_set(&device->ap_actlog_cnt, 0);
 atomic_set(&device->ap_pending_cnt, 0);
 atomic_set(&device->rs_pending_cnt, 0);
 atomic_set(&device->unacked_cnt, 0);
 atomic_set(&device->local_cnt, 0);
 atomic_set(&device->pp_in_use_by_net, 0);
 atomic_set(&device->rs_sect_in, 0);
 atomic_set(&device->rs_sect_ev, 0);
 atomic_set(&device->ap_in_flight, 0);
 atomic_set(&device->md_io.in_use, 0);

 mutex_init(&device->own_state_mutex);
 device->state_mutex = &device->own_state_mutex;

 spin_lock_init(&device->al_lock);
 spin_lock_init(&device->peer_seq_lock);

 INIT_LIST_HEAD(&device->active_ee);
 INIT_LIST_HEAD(&device->sync_ee);
 INIT_LIST_HEAD(&device->done_ee);
 INIT_LIST_HEAD(&device->read_ee);
 INIT_LIST_HEAD(&device->net_ee);
 INIT_LIST_HEAD(&device->resync_reads);
 INIT_LIST_HEAD(&device->resync_work.list);
 INIT_LIST_HEAD(&device->unplug_work.list);
 INIT_LIST_HEAD(&device->bm_io_work.w.list);
 INIT_LIST_HEAD(&device->pending_master_completion[0]);
 INIT_LIST_HEAD(&device->pending_master_completion[1]);
 INIT_LIST_HEAD(&device->pending_completion[0]);
 INIT_LIST_HEAD(&device->pending_completion[1]);

 device->resync_work.cb = w_resync_timer;
 device->unplug_work.cb = w_send_write_hint;
 device->bm_io_work.w.cb = w_bitmap_io;

 timer_setup(&device->resync_timer, resync_timer_fn, 0);
 timer_setup(&device->md_sync_timer, md_sync_timer_fn, 0);
 timer_setup(&device->start_resync_timer, start_resync_timer_fn, 0);
 timer_setup(&device->request_timer, request_timer_fn, 0);

 init_waitqueue_head(&device->misc_wait);
 init_waitqueue_head(&device->state_wait);
 init_waitqueue_head(&device->ee_wait);
 init_waitqueue_head(&device->al_wait);
 init_waitqueue_head(&device->seq_wait);

 device->resync_wenr = LC_FREE;
 device->peer_max_bio_size = DRBD_MAX_BIO_SIZE_SAFE;
 device->local_max_bio_size = DRBD_MAX_BIO_SIZE_SAFE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_conf {int on_congestion; scalar_t__ cong_fill; scalar_t__ cong_extents; } ;
struct TYPE_4__ {scalar_t__ conn; } ;
struct drbd_device {TYPE_2__* act_log; int ap_in_flight; TYPE_1__ state; } ;
struct drbd_connection {int agreed_pro_version; int net_conf; } ;
typedef enum drbd_on_congestion { ____Placeholder_drbd_on_congestion } drbd_on_congestion ;
struct TYPE_6__ {struct drbd_connection* connection; } ;
struct TYPE_5__ {scalar_t__ used; } ;


 scalar_t__ C_AHEAD ;
 scalar_t__ C_DISCONNECTING ;
 int D_UP_TO_DATE ;
 int OC_BLOCK ;
 int OC_PULL_AHEAD ;
 int _NS (struct drbd_device*,int ,scalar_t__) ;
 int _drbd_set_state (int ,int ,int *) ;
 scalar_t__ atomic_read (int *) ;
 int conn ;
 int drbd_info (struct drbd_device*,char*) ;
 TYPE_3__* first_peer_device (struct drbd_device*) ;
 int get_ldev_if_state (struct drbd_device*,int ) ;
 int put_ldev (struct drbd_device*) ;
 struct net_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int start_new_tl_epoch (struct drbd_connection*) ;

__attribute__((used)) static void maybe_pull_ahead(struct drbd_device *device)
{
 struct drbd_connection *connection = first_peer_device(device)->connection;
 struct net_conf *nc;
 bool congested = 0;
 enum drbd_on_congestion on_congestion;

 rcu_read_lock();
 nc = rcu_dereference(connection->net_conf);
 on_congestion = nc ? nc->on_congestion : OC_BLOCK;
 rcu_read_unlock();
 if (on_congestion == OC_BLOCK ||
     connection->agreed_pro_version < 96)
  return;

 if (on_congestion == OC_PULL_AHEAD && device->state.conn == C_AHEAD)
  return;





 if (!get_ldev_if_state(device, D_UP_TO_DATE))
  return;

 if (nc->cong_fill &&
     atomic_read(&device->ap_in_flight) >= nc->cong_fill) {
  drbd_info(device, "Congestion-fill threshold reached\n");
  congested = 1;
 }

 if (device->act_log->used >= nc->cong_extents) {
  drbd_info(device, "Congestion-extents threshold reached\n");
  congested = 1;
 }

 if (congested) {

  start_new_tl_epoch(first_peer_device(device)->connection);

  if (on_congestion == OC_PULL_AHEAD)
   _drbd_set_state(_NS(device, conn, C_AHEAD), 0, ((void*)0));
  else
   _drbd_set_state(_NS(device, conn, C_DISCONNECTING), 0, ((void*)0));
 }
 put_ldev(device);
}

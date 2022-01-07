
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct p_uuids {void** uuid; } ;
struct drbd_socket {int dummy; } ;
struct drbd_peer_device {TYPE_3__* connection; struct drbd_device* device; } ;
struct TYPE_9__ {scalar_t__ disk; } ;
struct drbd_device {int comm_bm_set; TYPE_4__ new_state_tmp; int flags; TYPE_2__* ldev; } ;
struct TYPE_10__ {scalar_t__ discard_my_data; } ;
struct TYPE_8__ {int net_conf; struct drbd_socket data; } ;
struct TYPE_6__ {int* uuid; int uuid_lock; } ;
struct TYPE_7__ {TYPE_1__ md; } ;


 int CRASHED_PRIMARY ;
 scalar_t__ D_INCONSISTENT ;
 int D_NEGOTIATING ;
 int EIO ;
 int P_UUIDS ;
 int UI_CURRENT ;
 size_t UI_FLAGS ;
 int UI_SIZE ;
 void* cpu_to_be64 (int) ;
 int drbd_bm_total_weight (struct drbd_device*) ;
 struct p_uuids* drbd_prepare_command (struct drbd_peer_device*,struct drbd_socket*) ;
 int drbd_send_command (struct drbd_peer_device*,struct drbd_socket*,int ,int,int *,int ) ;
 int get_ldev_if_state (struct drbd_device*,int ) ;
 int put_ldev (struct drbd_device*) ;
 TYPE_5__* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int _drbd_send_uuids(struct drbd_peer_device *peer_device, u64 uuid_flags)
{
 struct drbd_device *device = peer_device->device;
 struct drbd_socket *sock;
 struct p_uuids *p;
 int i;

 if (!get_ldev_if_state(device, D_NEGOTIATING))
  return 0;

 sock = &peer_device->connection->data;
 p = drbd_prepare_command(peer_device, sock);
 if (!p) {
  put_ldev(device);
  return -EIO;
 }
 spin_lock_irq(&device->ldev->md.uuid_lock);
 for (i = UI_CURRENT; i < UI_SIZE; i++)
  p->uuid[i] = cpu_to_be64(device->ldev->md.uuid[i]);
 spin_unlock_irq(&device->ldev->md.uuid_lock);

 device->comm_bm_set = drbd_bm_total_weight(device);
 p->uuid[UI_SIZE] = cpu_to_be64(device->comm_bm_set);
 rcu_read_lock();
 uuid_flags |= rcu_dereference(peer_device->connection->net_conf)->discard_my_data ? 1 : 0;
 rcu_read_unlock();
 uuid_flags |= test_bit(CRASHED_PRIMARY, &device->flags) ? 2 : 0;
 uuid_flags |= device->new_state_tmp.disk == D_INCONSISTENT ? 4 : 0;
 p->uuid[UI_FLAGS] = cpu_to_be64(uuid_flags);

 put_ldev(device);
 return drbd_send_command(peer_device, sock, P_UUIDS, sizeof(*p), ((void*)0), 0);
}

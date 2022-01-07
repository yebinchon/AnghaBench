
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct p_rs_uuid {int uuid; } ;
struct drbd_socket {int dummy; } ;
struct drbd_peer_device {TYPE_4__* connection; struct drbd_device* device; } ;
struct TYPE_5__ {scalar_t__ disk; } ;
struct drbd_device {TYPE_3__* ldev; TYPE_1__ state; } ;
struct TYPE_8__ {struct drbd_socket data; } ;
struct TYPE_6__ {scalar_t__* uuid; } ;
struct TYPE_7__ {TYPE_2__ md; } ;


 int D_ASSERT (struct drbd_device*,int) ;
 scalar_t__ D_UP_TO_DATE ;
 int P_SYNC_UUID ;
 size_t UI_BITMAP ;
 scalar_t__ UUID_JUST_CREATED ;
 scalar_t__ UUID_NEW_BM_OFFSET ;
 int cpu_to_be64 (scalar_t__) ;
 int drbd_md_sync (struct drbd_device*) ;
 struct p_rs_uuid* drbd_prepare_command (struct drbd_peer_device*,struct drbd_socket*) ;
 int drbd_print_uuids (struct drbd_device*,char*) ;
 int drbd_send_command (struct drbd_peer_device*,struct drbd_socket*,int ,int,int *,int ) ;
 int drbd_uuid_set (struct drbd_device*,size_t,scalar_t__) ;
 int get_random_bytes (scalar_t__*,int) ;

void drbd_gen_and_send_sync_uuid(struct drbd_peer_device *peer_device)
{
 struct drbd_device *device = peer_device->device;
 struct drbd_socket *sock;
 struct p_rs_uuid *p;
 u64 uuid;

 D_ASSERT(device, device->state.disk == D_UP_TO_DATE);

 uuid = device->ldev->md.uuid[UI_BITMAP];
 if (uuid && uuid != UUID_JUST_CREATED)
  uuid = uuid + UUID_NEW_BM_OFFSET;
 else
  get_random_bytes(&uuid, sizeof(u64));
 drbd_uuid_set(device, UI_BITMAP, uuid);
 drbd_print_uuids(device, "updated sync UUID");
 drbd_md_sync(device);

 sock = &peer_device->connection->data;
 p = drbd_prepare_command(peer_device, sock);
 if (p) {
  p->uuid = cpu_to_be64(uuid);
  drbd_send_command(peer_device, sock, P_SYNC_UUID, sizeof(*p), ((void*)0), 0);
 }
}

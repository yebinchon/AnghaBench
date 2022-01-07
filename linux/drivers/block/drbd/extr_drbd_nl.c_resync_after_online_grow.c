
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ role; scalar_t__ peer; } ;
struct drbd_device {TYPE_1__ state; } ;
struct TYPE_6__ {TYPE_2__* connection; } ;
struct TYPE_5__ {int flags; } ;


 scalar_t__ CS_SERIALIZE ;
 scalar_t__ CS_VERBOSE ;
 int C_SYNC_SOURCE ;
 int C_WF_SYNC_UUID ;
 int NS (int ,int ) ;
 int RESOLVE_CONFLICTS ;
 scalar_t__ R_PRIMARY ;
 int _drbd_request_state (struct drbd_device*,int ,scalar_t__) ;
 int conn ;
 int drbd_info (struct drbd_device*,char*) ;
 int drbd_start_resync (struct drbd_device*,int ) ;
 TYPE_3__* first_peer_device (struct drbd_device*) ;
 int test_bit (int ,int *) ;

void resync_after_online_grow(struct drbd_device *device)
{
 int iass;

 drbd_info(device, "Resync of new storage after online grow\n");
 if (device->state.role != device->state.peer)
  iass = (device->state.role == R_PRIMARY);
 else
  iass = test_bit(RESOLVE_CONFLICTS, &first_peer_device(device)->connection->flags);

 if (iass)
  drbd_start_resync(device, C_SYNC_SOURCE);
 else
  _drbd_request_state(device, NS(conn, C_WF_SYNC_UUID), CS_VERBOSE + CS_SERIALIZE);
}

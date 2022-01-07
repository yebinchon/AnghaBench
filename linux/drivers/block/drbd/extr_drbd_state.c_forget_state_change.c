
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drbd_state_change {unsigned int n_devices; unsigned int n_connections; TYPE_2__* connections; TYPE_1__* devices; TYPE_3__* resource; } ;
struct drbd_device {int kref; } ;
struct drbd_connection {int kref; } ;
struct TYPE_8__ {int kref; } ;
struct TYPE_7__ {TYPE_4__* resource; } ;
struct TYPE_6__ {struct drbd_connection* connection; } ;
struct TYPE_5__ {struct drbd_device* device; } ;


 int drbd_destroy_connection ;
 int drbd_destroy_device ;
 int drbd_destroy_resource ;
 int kfree (struct drbd_state_change*) ;
 int kref_put (int *,int ) ;

void forget_state_change(struct drbd_state_change *state_change)
{
 unsigned int n;

 if (!state_change)
  return;

 if (state_change->resource->resource)
  kref_put(&state_change->resource->resource->kref, drbd_destroy_resource);
 for (n = 0; n < state_change->n_devices; n++) {
  struct drbd_device *device = state_change->devices[n].device;

  if (device)
   kref_put(&device->kref, drbd_destroy_device);
 }
 for (n = 0; n < state_change->n_connections; n++) {
  struct drbd_connection *connection =
   state_change->connections[n].connection;

  if (connection)
   kref_put(&connection->kref, drbd_destroy_connection);
 }
 kfree(state_change);
}

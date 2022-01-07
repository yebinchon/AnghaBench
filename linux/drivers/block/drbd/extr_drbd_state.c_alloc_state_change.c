
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drbd_state_change {unsigned int n_devices; unsigned int n_connections; TYPE_3__* connections; TYPE_2__* devices; TYPE_1__* resource; void* peer_devices; } ;
struct drbd_peer_device_state_change {int dummy; } ;
struct drbd_device_state_change {int dummy; } ;
struct drbd_connection_state_change {int dummy; } ;
typedef int gfp_t ;
struct TYPE_6__ {int * connection; } ;
struct TYPE_5__ {int * device; } ;
struct TYPE_4__ {int * resource; } ;


 struct drbd_state_change* kmalloc (unsigned int,int ) ;

__attribute__((used)) static struct drbd_state_change *alloc_state_change(unsigned int n_devices, unsigned int n_connections, gfp_t gfp)
{
 struct drbd_state_change *state_change;
 unsigned int size, n;

 size = sizeof(struct drbd_state_change) +
        n_devices * sizeof(struct drbd_device_state_change) +
        n_connections * sizeof(struct drbd_connection_state_change) +
        n_devices * n_connections * sizeof(struct drbd_peer_device_state_change);
 state_change = kmalloc(size, gfp);
 if (!state_change)
  return ((void*)0);
 state_change->n_devices = n_devices;
 state_change->n_connections = n_connections;
 state_change->devices = (void *)(state_change + 1);
 state_change->connections = (void *)&state_change->devices[n_devices];
 state_change->peer_devices = (void *)&state_change->connections[n_connections];
 state_change->resource->resource = ((void*)0);
 for (n = 0; n < n_devices; n++)
  state_change->devices[n].device = ((void*)0);
 for (n = 0; n < n_connections; n++)
  state_change->connections[n].connection = ((void*)0);
 return state_change;
}

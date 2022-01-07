
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct p_state {int state; } ;
struct drbd_socket {int dummy; } ;
struct drbd_peer_device {TYPE_3__* device; TYPE_1__* connection; } ;
struct TYPE_5__ {int i; } ;
struct TYPE_6__ {TYPE_2__ state; } ;
struct TYPE_4__ {struct drbd_socket data; } ;


 int EIO ;
 int P_STATE ;
 int cpu_to_be32 (int ) ;
 struct p_state* drbd_prepare_command (struct drbd_peer_device*,struct drbd_socket*) ;
 int drbd_send_command (struct drbd_peer_device*,struct drbd_socket*,int ,int,int *,int ) ;

int drbd_send_current_state(struct drbd_peer_device *peer_device)
{
 struct drbd_socket *sock;
 struct p_state *p;

 sock = &peer_device->connection->data;
 p = drbd_prepare_command(peer_device, sock);
 if (!p)
  return -EIO;
 p->state = cpu_to_be32(peer_device->device->state.i);
 return drbd_send_command(peer_device, sock, P_STATE, sizeof(*p), ((void*)0), 0);
}

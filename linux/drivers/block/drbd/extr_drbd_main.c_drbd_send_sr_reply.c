
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p_req_state_reply {int retcode; } ;
struct drbd_socket {int dummy; } ;
struct drbd_peer_device {TYPE_1__* connection; } ;
typedef enum drbd_state_rv { ____Placeholder_drbd_state_rv } drbd_state_rv ;
struct TYPE_2__ {struct drbd_socket meta; } ;


 int P_STATE_CHG_REPLY ;
 int cpu_to_be32 (int) ;
 struct p_req_state_reply* drbd_prepare_command (struct drbd_peer_device*,struct drbd_socket*) ;
 int drbd_send_command (struct drbd_peer_device*,struct drbd_socket*,int ,int,int *,int ) ;

void drbd_send_sr_reply(struct drbd_peer_device *peer_device, enum drbd_state_rv retcode)
{
 struct drbd_socket *sock;
 struct p_req_state_reply *p;

 sock = &peer_device->connection->meta;
 p = drbd_prepare_command(peer_device, sock);
 if (p) {
  p->retcode = cpu_to_be32(retcode);
  drbd_send_command(peer_device, sock, P_STATE_CHG_REPLY, sizeof(*p), ((void*)0), 0);
 }
}

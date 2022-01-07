
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct p_block_desc {int blksize; int sector; } ;
struct drbd_socket {int dummy; } ;
struct TYPE_4__ {int size; int sector; } ;
struct drbd_request {TYPE_2__ i; } ;
struct drbd_peer_device {TYPE_1__* connection; } ;
struct TYPE_3__ {struct drbd_socket data; } ;


 int EIO ;
 int P_OUT_OF_SYNC ;
 int cpu_to_be32 (int ) ;
 int cpu_to_be64 (int ) ;
 struct p_block_desc* drbd_prepare_command (struct drbd_peer_device*,struct drbd_socket*) ;
 int drbd_send_command (struct drbd_peer_device*,struct drbd_socket*,int ,int,int *,int ) ;

int drbd_send_out_of_sync(struct drbd_peer_device *peer_device, struct drbd_request *req)
{
 struct drbd_socket *sock;
 struct p_block_desc *p;

 sock = &peer_device->connection->data;
 p = drbd_prepare_command(peer_device, sock);
 if (!p)
  return -EIO;
 p->sector = cpu_to_be64(req->i.sector);
 p->blksize = cpu_to_be32(req->i.size);
 return drbd_send_command(peer_device, sock, P_OUT_OF_SYNC, sizeof(*p), ((void*)0), 0);
}

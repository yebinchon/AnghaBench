
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u64 ;
typedef int u32 ;
struct p_block_ack {int seq_num; int blksize; void* block_id; void* sector; } ;
struct drbd_socket {int dummy; } ;
struct drbd_peer_device {TYPE_3__* device; TYPE_1__* connection; } ;
typedef enum drbd_packet { ____Placeholder_drbd_packet } drbd_packet ;
struct TYPE_5__ {scalar_t__ conn; } ;
struct TYPE_6__ {int packet_seq; TYPE_2__ state; } ;
struct TYPE_4__ {struct drbd_socket meta; } ;


 scalar_t__ C_CONNECTED ;
 int EIO ;
 int atomic_inc_return (int *) ;
 int cpu_to_be32 (int ) ;
 struct p_block_ack* drbd_prepare_command (struct drbd_peer_device*,struct drbd_socket*) ;
 int drbd_send_command (struct drbd_peer_device*,struct drbd_socket*,int,int,int *,int ) ;

__attribute__((used)) static int _drbd_send_ack(struct drbd_peer_device *peer_device, enum drbd_packet cmd,
     u64 sector, u32 blksize, u64 block_id)
{
 struct drbd_socket *sock;
 struct p_block_ack *p;

 if (peer_device->device->state.conn < C_CONNECTED)
  return -EIO;

 sock = &peer_device->connection->meta;
 p = drbd_prepare_command(peer_device, sock);
 if (!p)
  return -EIO;
 p->sector = sector;
 p->block_id = block_id;
 p->blksize = blksize;
 p->seq_num = cpu_to_be32(atomic_inc_return(&peer_device->device->packet_seq));
 return drbd_send_command(peer_device, sock, cmd, sizeof(*p), ((void*)0), 0);
}

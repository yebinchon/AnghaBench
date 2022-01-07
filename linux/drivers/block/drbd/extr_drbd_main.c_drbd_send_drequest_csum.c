
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p_block_req {int blksize; int block_id; int sector; } ;
struct drbd_socket {int dummy; } ;
struct drbd_peer_device {TYPE_1__* connection; } ;
typedef int sector_t ;
typedef enum drbd_packet { ____Placeholder_drbd_packet } drbd_packet ;
struct TYPE_2__ {struct drbd_socket data; } ;


 int EIO ;
 int ID_SYNCER ;
 int cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 struct p_block_req* drbd_prepare_command (struct drbd_peer_device*,struct drbd_socket*) ;
 int drbd_send_command (struct drbd_peer_device*,struct drbd_socket*,int,int,void*,int) ;

int drbd_send_drequest_csum(struct drbd_peer_device *peer_device, sector_t sector, int size,
       void *digest, int digest_size, enum drbd_packet cmd)
{
 struct drbd_socket *sock;
 struct p_block_req *p;



 sock = &peer_device->connection->data;
 p = drbd_prepare_command(peer_device, sock);
 if (!p)
  return -EIO;
 p->sector = cpu_to_be64(sector);
 p->block_id = ID_SYNCER ;
 p->blksize = cpu_to_be32(size);
 return drbd_send_command(peer_device, sock, cmd, sizeof(*p), digest, digest_size);
}

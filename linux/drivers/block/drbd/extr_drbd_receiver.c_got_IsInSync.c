
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packet_info {int vnr; struct p_block_ack* data; } ;
struct p_block_ack {int seq_num; int blksize; int sector; } ;
struct drbd_peer_device {TYPE_1__* connection; struct drbd_device* device; } ;
struct drbd_device {int rs_same_csum; int rs_sect_in; } ;
struct drbd_connection {int dummy; } ;
typedef int sector_t ;
struct TYPE_2__ {int agreed_pro_version; } ;


 int BM_BLOCK_SHIFT ;
 int D_ASSERT (struct drbd_device*,int) ;
 int EIO ;
 int atomic_add (int,int *) ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 struct drbd_peer_device* conn_peer_device (struct drbd_connection*,int ) ;
 int dec_rs_pending (struct drbd_device*) ;
 int drbd_rs_complete_io (struct drbd_device*,int ) ;
 int drbd_set_in_sync (struct drbd_device*,int ,int) ;
 scalar_t__ get_ldev (struct drbd_device*) ;
 int put_ldev (struct drbd_device*) ;
 int update_peer_seq (struct drbd_peer_device*,int) ;

__attribute__((used)) static int got_IsInSync(struct drbd_connection *connection, struct packet_info *pi)
{
 struct drbd_peer_device *peer_device;
 struct drbd_device *device;
 struct p_block_ack *p = pi->data;
 sector_t sector = be64_to_cpu(p->sector);
 int blksize = be32_to_cpu(p->blksize);

 peer_device = conn_peer_device(connection, pi->vnr);
 if (!peer_device)
  return -EIO;
 device = peer_device->device;

 D_ASSERT(device, peer_device->connection->agreed_pro_version >= 89);

 update_peer_seq(peer_device, be32_to_cpu(p->seq_num));

 if (get_ldev(device)) {
  drbd_rs_complete_io(device, sector);
  drbd_set_in_sync(device, sector, blksize);

  device->rs_same_csum += (blksize >> BM_BLOCK_SHIFT);
  put_ldev(device);
 }
 dec_rs_pending(device);
 atomic_add(blksize >> 9, &device->rs_sect_in);

 return 0;
}

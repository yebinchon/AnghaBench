
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_info {int cmd; int vnr; struct p_block_ack* data; } ;
struct p_block_ack {int seq_num; int blksize; int sector; } ;
struct drbd_peer_device {struct drbd_device* device; } ;
struct drbd_device {int dummy; } ;
struct drbd_connection {int dummy; } ;
typedef int sector_t ;


 int BUG () ;
 int D_FAILED ;
 int EIO ;


 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 struct drbd_peer_device* conn_peer_device (struct drbd_connection*,int ) ;
 int dec_rs_pending (struct drbd_device*) ;
 int drbd_rs_complete_io (struct drbd_device*,int ) ;
 int drbd_rs_failed_io (struct drbd_device*,int ,int) ;
 scalar_t__ get_ldev_if_state (struct drbd_device*,int ) ;
 int put_ldev (struct drbd_device*) ;
 int update_peer_seq (struct drbd_peer_device*,int) ;

__attribute__((used)) static int got_NegRSDReply(struct drbd_connection *connection, struct packet_info *pi)
{
 struct drbd_peer_device *peer_device;
 struct drbd_device *device;
 sector_t sector;
 int size;
 struct p_block_ack *p = pi->data;

 peer_device = conn_peer_device(connection, pi->vnr);
 if (!peer_device)
  return -EIO;
 device = peer_device->device;

 sector = be64_to_cpu(p->sector);
 size = be32_to_cpu(p->blksize);

 update_peer_seq(peer_device, be32_to_cpu(p->seq_num));

 dec_rs_pending(device);

 if (get_ldev_if_state(device, D_FAILED)) {
  drbd_rs_complete_io(device, sector);
  switch (pi->cmd) {
  case 129:
   drbd_rs_failed_io(device, sector, size);
  case 128:
   break;
  default:
   BUG();
  }
  put_ldev(device);
 }

 return 0;
}

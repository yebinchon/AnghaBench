
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p_block_req {int block_id; int blksize; int sector; } ;
struct drbd_peer_device {int dummy; } ;
typedef enum drbd_packet { ____Placeholder_drbd_packet } drbd_packet ;


 int _drbd_send_ack (struct drbd_peer_device*,int,int ,int ,int ) ;

void drbd_send_ack_rp(struct drbd_peer_device *peer_device, enum drbd_packet cmd,
        struct p_block_req *rp)
{
 _drbd_send_ack(peer_device, cmd, rp->sector, rp->blksize, rp->block_id);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct drbd_peer_device {int dummy; } ;
typedef int sector_t ;
typedef enum drbd_packet { ____Placeholder_drbd_packet } drbd_packet ;


 int _drbd_send_ack (struct drbd_peer_device*,int,int ,int ,int ) ;
 int cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;

int drbd_send_ack_ex(struct drbd_peer_device *peer_device, enum drbd_packet cmd,
       sector_t sector, int blksize, u64 block_id)
{
 return _drbd_send_ack(peer_device, cmd,
         cpu_to_be64(sector),
         cpu_to_be32(blksize),
         cpu_to_be64(block_id));
}

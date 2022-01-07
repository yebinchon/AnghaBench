
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int sector; } ;
struct drbd_peer_request {int block_id; TYPE_1__ i; } ;
struct drbd_peer_device {int dummy; } ;
typedef enum drbd_packet { ____Placeholder_drbd_packet } drbd_packet ;


 int _drbd_send_ack (struct drbd_peer_device*,int,int ,int ,int ) ;
 int cpu_to_be32 (int ) ;
 int cpu_to_be64 (int ) ;

int drbd_send_ack(struct drbd_peer_device *peer_device, enum drbd_packet cmd,
    struct drbd_peer_request *peer_req)
{
 return _drbd_send_ack(peer_device, cmd,
         cpu_to_be64(peer_req->i.sector),
         cpu_to_be32(peer_req->i.size),
         peer_req->block_id);
}

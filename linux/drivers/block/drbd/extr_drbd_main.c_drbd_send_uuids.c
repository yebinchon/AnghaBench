
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_peer_device {int dummy; } ;


 int _drbd_send_uuids (struct drbd_peer_device*,int ) ;

int drbd_send_uuids(struct drbd_peer_device *peer_device)
{
 return _drbd_send_uuids(peer_device, 0);
}

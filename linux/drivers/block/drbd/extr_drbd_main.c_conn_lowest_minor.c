
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_peer_device {int device; } ;
struct drbd_connection {int peer_devices; } ;


 int device_to_minor (int ) ;
 struct drbd_peer_device* idr_get_next (int *,int*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int conn_lowest_minor(struct drbd_connection *connection)
{
 struct drbd_peer_device *peer_device;
 int vnr = 0, minor = -1;

 rcu_read_lock();
 peer_device = idr_get_next(&connection->peer_devices, &vnr);
 if (peer_device)
  minor = device_to_minor(peer_device->device);
 rcu_read_unlock();

 return minor;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_peer_device {int dummy; } ;
struct drbd_connection {int peer_devices; } ;


 struct drbd_peer_device* idr_find (int *,int) ;

__attribute__((used)) static inline struct drbd_peer_device *
conn_peer_device(struct drbd_connection *connection, int volume_number)
{
 return idr_find(&connection->peer_devices, volume_number);
}

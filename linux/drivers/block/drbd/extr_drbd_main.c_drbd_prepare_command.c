
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_socket {int dummy; } ;
struct drbd_peer_device {int connection; } ;


 void* conn_prepare_command (int ,struct drbd_socket*) ;

void *drbd_prepare_command(struct drbd_peer_device *peer_device, struct drbd_socket *sock)
{
 return conn_prepare_command(peer_device->connection, sock);
}

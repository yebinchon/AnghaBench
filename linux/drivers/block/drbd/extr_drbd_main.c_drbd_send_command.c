
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drbd_socket {int mutex; } ;
struct drbd_peer_device {TYPE_1__* device; int connection; } ;
typedef enum drbd_packet { ____Placeholder_drbd_packet } drbd_packet ;
struct TYPE_2__ {int vnr; } ;


 int __send_command (int ,int ,struct drbd_socket*,int,unsigned int,void*,unsigned int) ;
 int mutex_unlock (int *) ;

int drbd_send_command(struct drbd_peer_device *peer_device, struct drbd_socket *sock,
        enum drbd_packet cmd, unsigned int header_size,
        void *data, unsigned int size)
{
 int err;

 err = __send_command(peer_device->connection, peer_device->device->vnr,
        sock, cmd, header_size, data, size);
 mutex_unlock(&sock->mutex);
 return err;
}

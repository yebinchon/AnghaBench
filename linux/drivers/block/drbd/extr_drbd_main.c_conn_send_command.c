
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_socket {int mutex; } ;
struct drbd_connection {int dummy; } ;
typedef enum drbd_packet { ____Placeholder_drbd_packet } drbd_packet ;


 int __conn_send_command (struct drbd_connection*,struct drbd_socket*,int,unsigned int,void*,unsigned int) ;
 int mutex_unlock (int *) ;

int conn_send_command(struct drbd_connection *connection, struct drbd_socket *sock,
        enum drbd_packet cmd, unsigned int header_size,
        void *data, unsigned int size)
{
 int err;

 err = __conn_send_command(connection, sock, cmd, header_size, data, size);
 mutex_unlock(&sock->mutex);
 return err;
}

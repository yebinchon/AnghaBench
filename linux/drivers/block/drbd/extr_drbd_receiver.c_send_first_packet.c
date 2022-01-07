
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_socket {int dummy; } ;
struct drbd_connection {int dummy; } ;
typedef enum drbd_packet { ____Placeholder_drbd_packet } drbd_packet ;


 int EIO ;
 int conn_prepare_command (struct drbd_connection*,struct drbd_socket*) ;
 int conn_send_command (struct drbd_connection*,struct drbd_socket*,int,int ,int *,int ) ;

__attribute__((used)) static int send_first_packet(struct drbd_connection *connection, struct drbd_socket *sock,
        enum drbd_packet cmd)
{
 if (!conn_prepare_command(connection, sock))
  return -EIO;
 return conn_send_command(connection, sock, cmd, 0, ((void*)0), 0);
}

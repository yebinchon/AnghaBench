
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_socket {int dummy; } ;
struct drbd_connection {struct drbd_socket meta; } ;


 int EIO ;
 int P_PING ;
 int conn_prepare_command (struct drbd_connection*,struct drbd_socket*) ;
 int conn_send_command (struct drbd_connection*,struct drbd_socket*,int ,int ,int *,int ) ;

int drbd_send_ping(struct drbd_connection *connection)
{
 struct drbd_socket *sock;

 sock = &connection->meta;
 if (!conn_prepare_command(connection, sock))
  return -EIO;
 return conn_send_command(connection, sock, P_PING, 0, ((void*)0), 0);
}

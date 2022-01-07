
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_socket {void* sbuf; int socket; } ;
struct drbd_connection {int dummy; } ;
typedef enum drbd_packet { ____Placeholder_drbd_packet } drbd_packet ;


 int MSG_MORE ;
 int P_PING ;
 int P_PING_ACK ;
 int drbd_send_all (struct drbd_connection*,int ,void*,unsigned int,int) ;
 int drbd_tcp_nodelay (int ) ;
 scalar_t__ prepare_header (struct drbd_connection*,int,void*,int,unsigned int) ;

__attribute__((used)) static int __send_command(struct drbd_connection *connection, int vnr,
     struct drbd_socket *sock, enum drbd_packet cmd,
     unsigned int header_size, void *data,
     unsigned int size)
{
 int msg_flags;
 int err;
 msg_flags = data ? MSG_MORE : 0;

 header_size += prepare_header(connection, vnr, sock->sbuf, cmd,
          header_size + size);
 err = drbd_send_all(connection, sock->socket, sock->sbuf, header_size,
       msg_flags);
 if (data && !err)
  err = drbd_send_all(connection, sock->socket, data, size, 0);


 if (!err && (cmd == P_PING || cmd == P_PING_ACK))
  drbd_tcp_nodelay(sock->socket);

 return err;
}

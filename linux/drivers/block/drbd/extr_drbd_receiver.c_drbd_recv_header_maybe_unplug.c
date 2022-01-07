
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packet_info {int dummy; } ;
struct TYPE_2__ {void* rbuf; int socket; } ;
struct drbd_connection {int last_received; TYPE_1__ data; } ;


 int EAGAIN ;
 int MSG_DONTWAIT ;
 int MSG_NOSIGNAL ;
 int decode_header (struct drbd_connection*,void*,struct packet_info*) ;
 unsigned int drbd_header_size (struct drbd_connection*) ;
 int drbd_recv_all_warn (struct drbd_connection*,void*,unsigned int) ;
 int drbd_recv_short (int ,void*,unsigned int,int) ;
 int drbd_tcp_quickack (int ) ;
 int drbd_unplug_all_devices (struct drbd_connection*) ;
 int jiffies ;

__attribute__((used)) static int drbd_recv_header_maybe_unplug(struct drbd_connection *connection, struct packet_info *pi)
{
 void *buffer = connection->data.rbuf;
 unsigned int size = drbd_header_size(connection);
 int err;

 err = drbd_recv_short(connection->data.socket, buffer, size, MSG_NOSIGNAL|MSG_DONTWAIT);
 if (err != size) {




  if (err == -EAGAIN) {
   drbd_tcp_quickack(connection->data.socket);
   drbd_unplug_all_devices(connection);
  }
  if (err > 0) {
   buffer += err;
   size -= err;
  }
  err = drbd_recv_all_warn(connection, buffer, size);
  if (err)
   return err;
 }

 err = decode_header(connection, connection->data.rbuf, pi);
 connection->last_received = jiffies;

 return err;
}

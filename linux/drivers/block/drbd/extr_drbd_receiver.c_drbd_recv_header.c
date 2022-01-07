
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packet_info {int dummy; } ;
struct TYPE_2__ {void* rbuf; } ;
struct drbd_connection {int last_received; TYPE_1__ data; } ;


 int decode_header (struct drbd_connection*,void*,struct packet_info*) ;
 int drbd_header_size (struct drbd_connection*) ;
 int drbd_recv_all_warn (struct drbd_connection*,void*,int ) ;
 int jiffies ;

__attribute__((used)) static int drbd_recv_header(struct drbd_connection *connection, struct packet_info *pi)
{
 void *buffer = connection->data.rbuf;
 int err;

 err = drbd_recv_all_warn(connection, buffer, drbd_header_size(connection));
 if (err)
  return err;

 err = decode_header(connection, buffer, pi);
 connection->last_received = jiffies;

 return err;
}

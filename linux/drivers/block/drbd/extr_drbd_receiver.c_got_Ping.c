
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_info {int dummy; } ;
struct drbd_connection {int dummy; } ;


 int drbd_send_ping_ack (struct drbd_connection*) ;

__attribute__((used)) static int got_Ping(struct drbd_connection *connection, struct packet_info *pi)
{
 return drbd_send_ping_ack(connection);

}

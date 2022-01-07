
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct packet_info {int cmd; } ;
struct net_conf {int ping_timeo; } ;
struct TYPE_4__ {int rbuf; } ;
struct drbd_connection {TYPE_2__ data; int net_conf; } ;
struct TYPE_3__ {int sk_rcvtimeo; } ;


 int EIO ;
 int HZ ;
 int decode_header (struct drbd_connection*,int ,struct packet_info*) ;
 unsigned int drbd_header_size (struct drbd_connection*) ;
 int drbd_recv_short (struct socket*,int ,unsigned int,int ) ;
 struct net_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int receive_first_packet(struct drbd_connection *connection, struct socket *sock)
{
 unsigned int header_size = drbd_header_size(connection);
 struct packet_info pi;
 struct net_conf *nc;
 int err;

 rcu_read_lock();
 nc = rcu_dereference(connection->net_conf);
 if (!nc) {
  rcu_read_unlock();
  return -EIO;
 }
 sock->sk->sk_rcvtimeo = nc->ping_timeo * 4 * HZ / 10;
 rcu_read_unlock();

 err = drbd_recv_short(sock, connection->data.rbuf, header_size, 0);
 if (err != header_size) {
  if (err >= 0)
   err = -EIO;
  return err;
 }
 err = decode_header(connection, connection->data.rbuf, &pi);
 if (err)
  return err;
 return pi.cmd;
}

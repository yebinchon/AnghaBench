
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct net_conf {int ping_timeo; scalar_t__ sock_check_timeo; } ;
struct drbd_connection {int net_conf; } ;


 int HZ ;
 int drbd_socket_okay (struct socket**) ;
 struct net_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int schedule_timeout_interruptible (int) ;

__attribute__((used)) static bool connection_established(struct drbd_connection *connection,
       struct socket **sock1,
       struct socket **sock2)
{
 struct net_conf *nc;
 int timeout;
 bool ok;

 if (!*sock1 || !*sock2)
  return 0;

 rcu_read_lock();
 nc = rcu_dereference(connection->net_conf);
 timeout = (nc->sock_check_timeo ?: nc->ping_timeo) * HZ / 10;
 rcu_read_unlock();
 schedule_timeout_interruptible(timeout);

 ok = drbd_socket_okay(sock1);
 ok = drbd_socket_okay(sock2) && ok;

 return ok;
}

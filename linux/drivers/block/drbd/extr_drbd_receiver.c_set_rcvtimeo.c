
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_conf {long ping_timeo; long ping_int; } ;
struct TYPE_6__ {TYPE_2__* socket; } ;
struct drbd_connection {TYPE_3__ meta; int net_conf; } ;
struct TYPE_5__ {TYPE_1__* sk; } ;
struct TYPE_4__ {long sk_rcvtimeo; } ;


 long HZ ;
 struct net_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void set_rcvtimeo(struct drbd_connection *connection, bool ping_timeout)
{
 long t;
 struct net_conf *nc;

 rcu_read_lock();
 nc = rcu_dereference(connection->net_conf);
 t = ping_timeout ? nc->ping_timeo : nc->ping_int;
 rcu_read_unlock();

 t *= HZ;
 if (ping_timeout)
  t /= 10;

 connection->meta.socket->sk->sk_rcvtimeo = t;
}

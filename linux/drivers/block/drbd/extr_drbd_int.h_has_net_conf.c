
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_connection {int net_conf; } ;


 int rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline bool has_net_conf(struct drbd_connection *connection)
{
 bool has_net_conf;

 rcu_read_lock();
 has_net_conf = rcu_dereference(connection->net_conf);
 rcu_read_unlock();

 return has_net_conf;
}

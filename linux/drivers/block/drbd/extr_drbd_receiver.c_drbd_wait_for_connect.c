
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;
struct net_conf {int connect_int; } ;
struct drbd_connection {int net_conf; } ;
struct accept_wait_data {int s_listen; int door_bell; } ;


 int CS_HARD ;
 int C_DISCONNECTING ;
 int EAGAIN ;
 int EINTR ;
 int ERESTARTSYS ;
 int HZ ;
 int NS (int ,int ) ;
 int conn ;
 int conn_request_state (struct drbd_connection*,int ,int ) ;
 int drbd_err (struct drbd_connection*,char*,int) ;
 int kernel_accept (int ,struct socket**,int ) ;
 int prandom_u32 () ;
 struct net_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int unregister_state_change (int ,struct accept_wait_data*) ;
 int wait_for_completion_interruptible_timeout (int *,int) ;

__attribute__((used)) static struct socket *drbd_wait_for_connect(struct drbd_connection *connection, struct accept_wait_data *ad)
{
 int timeo, connect_int, err = 0;
 struct socket *s_estab = ((void*)0);
 struct net_conf *nc;

 rcu_read_lock();
 nc = rcu_dereference(connection->net_conf);
 if (!nc) {
  rcu_read_unlock();
  return ((void*)0);
 }
 connect_int = nc->connect_int;
 rcu_read_unlock();

 timeo = connect_int * HZ;

 timeo += (prandom_u32() & 1) ? timeo / 7 : -timeo / 7;

 err = wait_for_completion_interruptible_timeout(&ad->door_bell, timeo);
 if (err <= 0)
  return ((void*)0);

 err = kernel_accept(ad->s_listen, &s_estab, 0);
 if (err < 0) {
  if (err != -EAGAIN && err != -EINTR && err != -ERESTARTSYS) {
   drbd_err(connection, "accept failed, err = %d\n", err);
   conn_request_state(connection, NS(conn, C_DISCONNECTING), CS_HARD);
  }
 }

 if (s_estab)
  unregister_state_change(s_estab->sk, ad);

 return s_estab;
}

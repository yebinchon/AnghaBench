
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_message {int dummy; } ;
struct connection {int dummy; } ;


 int assert (int) ;
 int rwm_create (struct raw_message*,void*,int) ;
 int tcp_rpc_conn_send (struct connection*,struct raw_message*,int ) ;

void tcp_rpc_conn_send_data (struct connection *c, int len, void *Q) {
  assert (!(len & 3));
  struct raw_message r;
  assert (rwm_create (&r, Q, len) == len);
  tcp_rpc_conn_send (c, &r, 0);
}

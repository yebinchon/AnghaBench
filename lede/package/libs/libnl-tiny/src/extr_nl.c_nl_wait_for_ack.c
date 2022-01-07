
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_sock {int s_cb; } ;
struct nl_cb {int dummy; } ;


 int NLE_NOMEM ;
 int NL_CB_ACK ;
 int NL_CB_CUSTOM ;
 int ack_wait_handler ;
 struct nl_cb* nl_cb_clone (int ) ;
 int nl_cb_put (struct nl_cb*) ;
 int nl_cb_set (struct nl_cb*,int ,int ,int ,int *) ;
 int nl_recvmsgs (struct nl_sock*,struct nl_cb*) ;

int nl_wait_for_ack(struct nl_sock *sk)
{
 int err;
 struct nl_cb *cb;

 cb = nl_cb_clone(sk->s_cb);
 if (cb == ((void*)0))
  return -NLE_NOMEM;

 nl_cb_set(cb, NL_CB_ACK, NL_CB_CUSTOM, ack_wait_handler, ((void*)0));
 err = nl_recvmsgs(sk, cb);
 nl_cb_put(cb);

 return err;
}

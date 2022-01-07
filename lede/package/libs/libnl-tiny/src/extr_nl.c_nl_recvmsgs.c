
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_sock {int dummy; } ;
struct nl_cb {int (* cb_recvmsgs_ow ) (struct nl_sock*,struct nl_cb*) ;} ;


 int recvmsgs (struct nl_sock*,struct nl_cb*) ;
 int stub1 (struct nl_sock*,struct nl_cb*) ;

int nl_recvmsgs(struct nl_sock *sk, struct nl_cb *cb)
{
 if (cb->cb_recvmsgs_ow)
  return cb->cb_recvmsgs_ow(sk, cb);
 else
  return recvmsgs(sk, cb);
}

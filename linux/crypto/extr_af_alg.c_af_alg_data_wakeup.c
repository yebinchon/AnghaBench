
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_wq {int wait; } ;
struct sock {int sk_wq; } ;
struct alg_sock {struct af_alg_ctx* private; } ;
struct af_alg_ctx {int used; } ;


 int EPOLLOUT ;
 int EPOLLRDBAND ;
 int EPOLLRDNORM ;
 int POLL_OUT ;
 int SOCK_WAKE_SPACE ;
 struct alg_sock* alg_sk (struct sock*) ;
 struct socket_wq* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sk_wake_async (struct sock*,int ,int ) ;
 scalar_t__ skwq_has_sleeper (struct socket_wq*) ;
 int wake_up_interruptible_sync_poll (int *,int) ;

__attribute__((used)) static void af_alg_data_wakeup(struct sock *sk)
{
 struct alg_sock *ask = alg_sk(sk);
 struct af_alg_ctx *ctx = ask->private;
 struct socket_wq *wq;

 if (!ctx->used)
  return;

 rcu_read_lock();
 wq = rcu_dereference(sk->sk_wq);
 if (skwq_has_sleeper(wq))
  wake_up_interruptible_sync_poll(&wq->wait, EPOLLOUT |
          EPOLLRDNORM |
          EPOLLRDBAND);
 sk_wake_async(sk, SOCK_WAKE_SPACE, POLL_OUT);
 rcu_read_unlock();
}

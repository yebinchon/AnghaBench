
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct file {int dummy; } ;
struct alg_sock {struct af_alg_ctx* private; } ;
struct af_alg_ctx {scalar_t__ used; int more; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRBAND ;
 int EPOLLWRNORM ;
 scalar_t__ af_alg_writable (struct sock*) ;
 struct alg_sock* alg_sk (struct sock*) ;
 int sock_poll_wait (struct file*,struct socket*,int *) ;

__poll_t af_alg_poll(struct file *file, struct socket *sock,
    poll_table *wait)
{
 struct sock *sk = sock->sk;
 struct alg_sock *ask = alg_sk(sk);
 struct af_alg_ctx *ctx = ask->private;
 __poll_t mask;

 sock_poll_wait(file, sock, wait);
 mask = 0;

 if (!ctx->more || ctx->used)
  mask |= EPOLLIN | EPOLLRDNORM;

 if (af_alg_writable(sk))
  mask |= EPOLLOUT | EPOLLWRNORM | EPOLLWRBAND;

 return mask;
}

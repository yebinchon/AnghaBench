
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_destruct; } ;
struct rng_ctx {unsigned int len; void* drng; } ;
struct alg_sock {struct rng_ctx* private; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct alg_sock* alg_sk (struct sock*) ;
 int rng_sock_destruct ;
 struct rng_ctx* sock_kmalloc (struct sock*,unsigned int,int ) ;

__attribute__((used)) static int rng_accept_parent(void *private, struct sock *sk)
{
 struct rng_ctx *ctx;
 struct alg_sock *ask = alg_sk(sk);
 unsigned int len = sizeof(*ctx);

 ctx = sock_kmalloc(sk, len, GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->len = len;







 ctx->drng = private;
 ask->private = ctx;
 sk->sk_destruct = rng_sock_destruct;

 return 0;
}

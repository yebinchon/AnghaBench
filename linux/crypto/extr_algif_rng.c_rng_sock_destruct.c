
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct rng_ctx {int len; } ;
struct alg_sock {struct rng_ctx* private; } ;


 int af_alg_release_parent (struct sock*) ;
 struct alg_sock* alg_sk (struct sock*) ;
 int sock_kfree_s (struct sock*,struct rng_ctx*,int ) ;

__attribute__((used)) static void rng_sock_destruct(struct sock *sk)
{
 struct alg_sock *ask = alg_sk(sk);
 struct rng_ctx *ctx = ask->private;

 sock_kfree_s(sk, ctx, ctx->len);
 af_alg_release_parent(sk);
}

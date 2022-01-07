
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct crypto_skcipher {int len; int iv; int used; } ;
struct alg_sock {struct crypto_skcipher* private; struct sock* parent; } ;
struct af_alg_ctx {int len; int iv; int used; } ;


 int af_alg_pull_tsgl (struct sock*,int ,int *,int ) ;
 int af_alg_release_parent (struct sock*) ;
 struct alg_sock* alg_sk (struct sock*) ;
 int crypto_skcipher_ivsize (struct crypto_skcipher*) ;
 int sock_kfree_s (struct sock*,struct crypto_skcipher*,int ) ;
 int sock_kzfree_s (struct sock*,int ,int ) ;

__attribute__((used)) static void skcipher_sock_destruct(struct sock *sk)
{
 struct alg_sock *ask = alg_sk(sk);
 struct af_alg_ctx *ctx = ask->private;
 struct sock *psk = ask->parent;
 struct alg_sock *pask = alg_sk(psk);
 struct crypto_skcipher *tfm = pask->private;

 af_alg_pull_tsgl(sk, ctx->used, ((void*)0), 0);
 sock_kzfree_s(sk, ctx->iv, crypto_skcipher_ivsize(tfm));
 sock_kfree_s(sk, ctx, ctx->len);
 af_alg_release_parent(sk);
}

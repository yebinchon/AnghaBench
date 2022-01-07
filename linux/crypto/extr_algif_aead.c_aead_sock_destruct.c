
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct alg_sock {struct af_alg_ctx* private; struct sock* parent; } ;
struct af_alg_ctx {int len; int iv; int used; struct crypto_aead* aead; } ;
struct aead_tfm {int len; int iv; int used; struct crypto_aead* aead; } ;


 int af_alg_pull_tsgl (struct sock*,int ,int *,int ) ;
 int af_alg_release_parent (struct sock*) ;
 struct alg_sock* alg_sk (struct sock*) ;
 unsigned int crypto_aead_ivsize (struct crypto_aead*) ;
 int sock_kfree_s (struct sock*,struct af_alg_ctx*,int ) ;
 int sock_kzfree_s (struct sock*,int ,unsigned int) ;

__attribute__((used)) static void aead_sock_destruct(struct sock *sk)
{
 struct alg_sock *ask = alg_sk(sk);
 struct af_alg_ctx *ctx = ask->private;
 struct sock *psk = ask->parent;
 struct alg_sock *pask = alg_sk(psk);
 struct aead_tfm *aeadc = pask->private;
 struct crypto_aead *tfm = aeadc->aead;
 unsigned int ivlen = crypto_aead_ivsize(tfm);

 af_alg_pull_tsgl(sk, ctx->used, ((void*)0), 0);
 sock_kzfree_s(sk, ctx->iv, ivlen);
 sock_kfree_s(sk, ctx, ctx->len);
 af_alg_release_parent(sk);
}

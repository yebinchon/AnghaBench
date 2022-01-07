
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_destruct; } ;
struct crypto_aead {int dummy; } ;
struct alg_sock {struct af_alg_ctx* private; } ;
struct af_alg_ctx {unsigned int len; int wait; scalar_t__ aead_assoclen; scalar_t__ enc; scalar_t__ merge; scalar_t__ more; int rcvused; scalar_t__ used; int tsgl_list; struct af_alg_ctx* iv; } ;
struct aead_tfm {struct crypto_aead* aead; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int aead_sock_destruct ;
 struct alg_sock* alg_sk (struct sock*) ;
 int atomic_set (int *,int ) ;
 unsigned int crypto_aead_ivsize (struct crypto_aead*) ;
 int crypto_init_wait (int *) ;
 int memset (struct af_alg_ctx*,int ,unsigned int) ;
 int sock_kfree_s (struct sock*,struct af_alg_ctx*,unsigned int) ;
 void* sock_kmalloc (struct sock*,unsigned int,int ) ;

__attribute__((used)) static int aead_accept_parent_nokey(void *private, struct sock *sk)
{
 struct af_alg_ctx *ctx;
 struct alg_sock *ask = alg_sk(sk);
 struct aead_tfm *tfm = private;
 struct crypto_aead *aead = tfm->aead;
 unsigned int len = sizeof(*ctx);
 unsigned int ivlen = crypto_aead_ivsize(aead);

 ctx = sock_kmalloc(sk, len, GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;
 memset(ctx, 0, len);

 ctx->iv = sock_kmalloc(sk, ivlen, GFP_KERNEL);
 if (!ctx->iv) {
  sock_kfree_s(sk, ctx, len);
  return -ENOMEM;
 }
 memset(ctx->iv, 0, ivlen);

 INIT_LIST_HEAD(&ctx->tsgl_list);
 ctx->len = len;
 ctx->used = 0;
 atomic_set(&ctx->rcvused, 0);
 ctx->more = 0;
 ctx->merge = 0;
 ctx->enc = 0;
 ctx->aead_assoclen = 0;
 crypto_init_wait(&ctx->wait);

 ask->private = ctx;

 sk->sk_destruct = aead_sock_destruct;

 return 0;
}

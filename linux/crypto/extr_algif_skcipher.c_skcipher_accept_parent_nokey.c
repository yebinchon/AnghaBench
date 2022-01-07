
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_destruct; } ;
struct crypto_skcipher {int dummy; } ;
struct alg_sock {struct af_alg_ctx* private; } ;
struct af_alg_ctx {unsigned int len; int wait; scalar_t__ enc; scalar_t__ merge; scalar_t__ more; int rcvused; scalar_t__ used; int tsgl_list; void* iv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct alg_sock* alg_sk (struct sock*) ;
 int atomic_set (int *,int ) ;
 int crypto_init_wait (int *) ;
 unsigned int crypto_skcipher_ivsize (struct crypto_skcipher*) ;
 int memset (void*,int ,unsigned int) ;
 int skcipher_sock_destruct ;
 int sock_kfree_s (struct sock*,struct af_alg_ctx*,unsigned int) ;
 void* sock_kmalloc (struct sock*,unsigned int,int ) ;

__attribute__((used)) static int skcipher_accept_parent_nokey(void *private, struct sock *sk)
{
 struct af_alg_ctx *ctx;
 struct alg_sock *ask = alg_sk(sk);
 struct crypto_skcipher *tfm = private;
 unsigned int len = sizeof(*ctx);

 ctx = sock_kmalloc(sk, len, GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->iv = sock_kmalloc(sk, crypto_skcipher_ivsize(tfm),
          GFP_KERNEL);
 if (!ctx->iv) {
  sock_kfree_s(sk, ctx, len);
  return -ENOMEM;
 }

 memset(ctx->iv, 0, crypto_skcipher_ivsize(tfm));

 INIT_LIST_HEAD(&ctx->tsgl_list);
 ctx->len = len;
 ctx->used = 0;
 atomic_set(&ctx->rcvused, 0);
 ctx->more = 0;
 ctx->merge = 0;
 ctx->enc = 0;
 crypto_init_wait(&ctx->wait);

 ask->private = ctx;

 sk->sk_destruct = skcipher_sock_destruct;

 return 0;
}

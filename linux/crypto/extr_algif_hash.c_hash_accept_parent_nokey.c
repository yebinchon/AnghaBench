
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_destruct; } ;
struct hash_ctx {unsigned int len; int wait; int req; scalar_t__ more; int * result; } ;
struct crypto_ahash {int dummy; } ;
struct alg_sock {struct hash_ctx* private; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ahash_request_set_callback (int *,int ,int ,int *) ;
 int ahash_request_set_tfm (int *,struct crypto_ahash*) ;
 struct alg_sock* alg_sk (struct sock*) ;
 int crypto_ahash_reqsize (struct crypto_ahash*) ;
 int crypto_init_wait (int *) ;
 int crypto_req_done ;
 int hash_sock_destruct ;
 struct hash_ctx* sock_kmalloc (struct sock*,unsigned int,int ) ;

__attribute__((used)) static int hash_accept_parent_nokey(void *private, struct sock *sk)
{
 struct crypto_ahash *tfm = private;
 struct alg_sock *ask = alg_sk(sk);
 struct hash_ctx *ctx;
 unsigned int len = sizeof(*ctx) + crypto_ahash_reqsize(tfm);

 ctx = sock_kmalloc(sk, len, GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->result = ((void*)0);
 ctx->len = len;
 ctx->more = 0;
 crypto_init_wait(&ctx->wait);

 ask->private = ctx;

 ahash_request_set_tfm(&ctx->req, tfm);
 ahash_request_set_callback(&ctx->req, CRYPTO_TFM_REQ_MAY_BACKLOG,
       crypto_req_done, &ctx->wait);

 sk->sk_destruct = hash_sock_destruct;

 return 0;
}

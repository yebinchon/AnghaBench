
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int sg; } ;
struct hash_ctx {int more; int wait; int req; int result; TYPE_1__ sgl; } ;
struct alg_sock {struct hash_ctx* private; } ;
typedef size_t ssize_t ;


 int MSG_MORE ;
 int MSG_SENDPAGE_NOTLAST ;
 int ahash_request_set_crypt (int *,int ,int ,size_t) ;
 struct alg_sock* alg_sk (struct sock*) ;
 int crypto_ahash_digest (int *) ;
 int crypto_ahash_finup (int *) ;
 int crypto_ahash_init (int *) ;
 int crypto_ahash_update (int *) ;
 int crypto_wait_req (int,int *) ;
 int hash_alloc_result (struct sock*,struct hash_ctx*) ;
 int hash_free_result (struct sock*,struct hash_ctx*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sg_init_table (int ,int) ;
 int sg_set_page (int ,struct page*,size_t,int) ;

__attribute__((used)) static ssize_t hash_sendpage(struct socket *sock, struct page *page,
        int offset, size_t size, int flags)
{
 struct sock *sk = sock->sk;
 struct alg_sock *ask = alg_sk(sk);
 struct hash_ctx *ctx = ask->private;
 int err;

 if (flags & MSG_SENDPAGE_NOTLAST)
  flags |= MSG_MORE;

 lock_sock(sk);
 sg_init_table(ctx->sgl.sg, 1);
 sg_set_page(ctx->sgl.sg, page, size, offset);

 if (!(flags & MSG_MORE)) {
  err = hash_alloc_result(sk, ctx);
  if (err)
   goto unlock;
 } else if (!ctx->more)
  hash_free_result(sk, ctx);

 ahash_request_set_crypt(&ctx->req, ctx->sgl.sg, ctx->result, size);

 if (!(flags & MSG_MORE)) {
  if (ctx->more)
   err = crypto_ahash_finup(&ctx->req);
  else
   err = crypto_ahash_digest(&ctx->req);
 } else {
  if (!ctx->more) {
   err = crypto_ahash_init(&ctx->req);
   err = crypto_wait_req(err, &ctx->wait);
   if (err)
    goto unlock;
  }

  err = crypto_ahash_update(&ctx->req);
 }

 err = crypto_wait_req(err, &ctx->wait);
 if (err)
  goto unlock;

 ctx->more = flags & MSG_MORE;

unlock:
 release_sock(sk);

 return err ?: size;
}

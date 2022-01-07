
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct hash_ctx {int * result; int req; } ;


 unsigned int crypto_ahash_digestsize (int ) ;
 int crypto_ahash_reqtfm (int *) ;
 int sock_kzfree_s (struct sock*,int *,unsigned int) ;

__attribute__((used)) static void hash_free_result(struct sock *sk, struct hash_ctx *ctx)
{
 unsigned ds;

 if (!ctx->result)
  return;

 ds = crypto_ahash_digestsize(crypto_ahash_reqtfm(&ctx->req));

 sock_kzfree_s(sk, ctx->result, ds);
 ctx->result = ((void*)0);
}

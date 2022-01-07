
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct hash_ctx {scalar_t__ result; int req; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int crypto_ahash_digestsize (int ) ;
 int crypto_ahash_reqtfm (int *) ;
 int memset (scalar_t__,int ,unsigned int) ;
 scalar_t__ sock_kmalloc (struct sock*,unsigned int,int ) ;

__attribute__((used)) static int hash_alloc_result(struct sock *sk, struct hash_ctx *ctx)
{
 unsigned ds;

 if (ctx->result)
  return 0;

 ds = crypto_ahash_digestsize(crypto_ahash_reqtfm(&ctx->req));

 ctx->result = sock_kmalloc(sk, ds, GFP_KERNEL);
 if (!ctx->result)
  return -ENOMEM;

 memset(ctx->result, 0, ds);

 return 0;
}

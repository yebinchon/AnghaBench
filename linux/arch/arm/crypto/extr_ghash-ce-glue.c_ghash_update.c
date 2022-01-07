
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int tfm; } ;
struct ghash_key {int dummy; } ;
struct ghash_desc_ctx {unsigned int count; int * buf; int digest; } ;


 unsigned int GHASH_BLOCK_SIZE ;
 struct ghash_key* crypto_shash_ctx (int ) ;
 int ghash_do_update (int,int ,int const*,struct ghash_key*,int *) ;
 int memcpy (int *,int const*,unsigned int) ;
 struct ghash_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int ghash_update(struct shash_desc *desc, const u8 *src,
   unsigned int len)
{
 struct ghash_desc_ctx *ctx = shash_desc_ctx(desc);
 unsigned int partial = ctx->count % GHASH_BLOCK_SIZE;

 ctx->count += len;

 if ((partial + len) >= GHASH_BLOCK_SIZE) {
  struct ghash_key *key = crypto_shash_ctx(desc->tfm);
  int blocks;

  if (partial) {
   int p = GHASH_BLOCK_SIZE - partial;

   memcpy(ctx->buf + partial, src, p);
   src += p;
   len -= p;
  }

  blocks = len / GHASH_BLOCK_SIZE;
  len %= GHASH_BLOCK_SIZE;

  ghash_do_update(blocks, ctx->digest, src, key,
    partial ? ctx->buf : ((void*)0));
  src += blocks * GHASH_BLOCK_SIZE;
  partial = 0;
 }
 if (len)
  memcpy(ctx->buf + partial, src, len);
 return 0;
}

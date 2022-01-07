
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int tfm; } ;
struct sha3_state {int rsiz; int rsizw; int st; scalar_t__ partial; } ;


 unsigned int crypto_shash_digestsize (int ) ;
 int memset (int ,int ,int) ;
 struct sha3_state* shash_desc_ctx (struct shash_desc*) ;

int crypto_sha3_init(struct shash_desc *desc)
{
 struct sha3_state *sctx = shash_desc_ctx(desc);
 unsigned int digest_size = crypto_shash_digestsize(desc->tfm);

 sctx->rsiz = 200 - 2 * digest_size;
 sctx->rsizw = sctx->rsiz / 8;
 sctx->partial = 0;

 memset(sctx->st, 0, sizeof(sctx->st));
 return 0;
}

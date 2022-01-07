
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct poly1305_desc_ctx {int rset; int sset; scalar_t__ buflen; int h; } ;


 int poly1305_core_init (int *) ;
 struct poly1305_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

int crypto_poly1305_init(struct shash_desc *desc)
{
 struct poly1305_desc_ctx *dctx = shash_desc_ctx(desc);

 poly1305_core_init(&dctx->h);
 dctx->buflen = 0;
 dctx->rset = 0;
 dctx->sset = 0;

 return 0;
}

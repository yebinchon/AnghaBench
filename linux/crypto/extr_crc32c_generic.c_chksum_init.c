
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int tfm; } ;
struct chksum_desc_ctx {int crc; } ;
struct chksum_ctx {int key; } ;


 struct chksum_ctx* crypto_shash_ctx (int ) ;
 struct chksum_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int chksum_init(struct shash_desc *desc)
{
 struct chksum_ctx *mctx = crypto_shash_ctx(desc->tfm);
 struct chksum_desc_ctx *ctx = shash_desc_ctx(desc);

 ctx->crc = mctx->key;

 return 0;
}

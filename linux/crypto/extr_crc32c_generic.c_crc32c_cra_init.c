
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct chksum_ctx {int key; } ;


 struct chksum_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int crc32c_cra_init(struct crypto_tfm *tfm)
{
 struct chksum_ctx *mctx = crypto_tfm_ctx(tfm);

 mctx->key = ~0;
 return 0;
}

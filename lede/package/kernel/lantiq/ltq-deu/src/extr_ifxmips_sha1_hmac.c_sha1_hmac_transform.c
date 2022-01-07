
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct shash_desc {int tfm; } ;
struct sha1_hmac_ctx {int dbn; } ;


 int SHA1_HMAC_DBN_TEMP_SIZE ;
 struct sha1_hmac_ctx* crypto_shash_ctx (int ) ;
 int memcpy (int *,int const*,int) ;
 int printk (char*) ;
 int * temp ;

__attribute__((used)) static int sha1_hmac_transform(struct shash_desc *desc, u32 const *in)
{
    struct sha1_hmac_ctx *sctx = crypto_shash_ctx(desc->tfm);

    memcpy(&temp[sctx->dbn<<4], in, 64);
    sctx->dbn += 1;

    if ( (sctx->dbn<<4) > SHA1_HMAC_DBN_TEMP_SIZE )
    {
        printk("SHA1_HMAC_DBN_TEMP_SIZE exceeded\n");
    }

    return 0;
}

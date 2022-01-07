
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct shash_desc {int tfm; } ;
struct sha1_hmac_ctx {int count; int * buffer; } ;


 struct sha1_hmac_ctx* crypto_shash_ctx (int ) ;
 int memcpy (int *,int const*,unsigned int) ;
 int sha1_hmac_transform (struct shash_desc*,int const*) ;

__attribute__((used)) static int sha1_hmac_update(struct shash_desc *desc, const u8 *data,
            unsigned int len)
{
    struct sha1_hmac_ctx *sctx = crypto_shash_ctx(desc->tfm);
    unsigned int i, j;

    j = (sctx->count >> 3) & 0x3f;
    sctx->count += len << 3;


    if ((j + len) > 63) {
        memcpy (&sctx->buffer[j], data, (i = 64 - j));
        sha1_hmac_transform (desc, (const u32 *)sctx->buffer);
        for (; i + 63 < len; i += 64) {
            sha1_hmac_transform (desc, (const u32 *)&data[i]);
        }

        j = 0;
    }
    else
        i = 0;

    memcpy (&sctx->buffer[j], &data[i], len - i);
    return 0;
}

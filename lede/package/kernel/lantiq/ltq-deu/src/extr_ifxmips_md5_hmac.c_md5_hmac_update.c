
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;
struct shash_desc {int tfm; } ;
struct md5_hmac_ctx {int byte_count; char* block; } ;


 struct md5_hmac_ctx* crypto_shash_ctx (int ) ;
 int md5_hmac_transform (struct shash_desc*,char*) ;
 int memcpy (char*,int const*,unsigned int const) ;

__attribute__((used)) static int md5_hmac_update(struct shash_desc *desc, const u8 *data, unsigned int len)
{
    struct md5_hmac_ctx *mctx = crypto_shash_ctx(desc->tfm);
    const u32 avail = sizeof(mctx->block) - (mctx->byte_count & 0x3f);

    mctx->byte_count += len;

    if (avail > len) {
        memcpy((char *)mctx->block + (sizeof(mctx->block) - avail),
               data, len);
        return 0;
    }

    memcpy((char *)mctx->block + (sizeof(mctx->block) - avail),
           data, avail);

    md5_hmac_transform(desc, mctx->block);
    data += avail;
    len -= avail;

    while (len >= sizeof(mctx->block)) {
        memcpy(mctx->block, data, sizeof(mctx->block));
        md5_hmac_transform(desc, mctx->block);
        data += sizeof(mctx->block);
        len -= sizeof(mctx->block);
    }

    memcpy(mctx->block, data, len);
    return 0;
}

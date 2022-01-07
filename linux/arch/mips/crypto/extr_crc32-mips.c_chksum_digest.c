
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int tfm; } ;
struct chksum_ctx {int key; } ;


 int __chksum_finup (int ,int const*,unsigned int,int *) ;
 struct chksum_ctx* crypto_shash_ctx (int ) ;

__attribute__((used)) static int chksum_digest(struct shash_desc *desc, const u8 *data,
    unsigned int length, u8 *out)
{
 struct chksum_ctx *mctx = crypto_shash_ctx(desc->tfm);

 return __chksum_finup(mctx->key, data, length, out);
}

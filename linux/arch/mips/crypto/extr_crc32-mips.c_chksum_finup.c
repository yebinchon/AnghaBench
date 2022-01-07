
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
struct chksum_desc_ctx {int crc; } ;


 int __chksum_finup (int ,int const*,unsigned int,int *) ;
 struct chksum_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int chksum_finup(struct shash_desc *desc, const u8 *data,
   unsigned int len, u8 *out)
{
 struct chksum_desc_ctx *ctx = shash_desc_ctx(desc);

 return __chksum_finup(ctx->crc, data, len, out);
}

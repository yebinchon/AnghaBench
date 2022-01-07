
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
struct chksum_desc_ctx {int crc; } ;
typedef int __u16 ;


 struct chksum_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int chksum_final(struct shash_desc *desc, u8 *out)
{
 struct chksum_desc_ctx *ctx = shash_desc_ctx(desc);

 *(__u16 *)out = ctx->crc;
 return 0;
}

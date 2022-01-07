
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
struct chksum_desc_ctx {int crc; } ;


 int crc_t10dif_generic (int ,int const*,unsigned int) ;
 int crc_t10dif_pcl (int ,int const*,unsigned int) ;
 scalar_t__ crypto_simd_usable () ;
 int kernel_fpu_begin () ;
 int kernel_fpu_end () ;
 struct chksum_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int chksum_update(struct shash_desc *desc, const u8 *data,
    unsigned int length)
{
 struct chksum_desc_ctx *ctx = shash_desc_ctx(desc);

 if (length >= 16 && crypto_simd_usable()) {
  kernel_fpu_begin();
  ctx->crc = crc_t10dif_pcl(ctx->crc, data, length);
  kernel_fpu_end();
 } else
  ctx->crc = crc_t10dif_generic(ctx->crc, data, length);
 return 0;
}

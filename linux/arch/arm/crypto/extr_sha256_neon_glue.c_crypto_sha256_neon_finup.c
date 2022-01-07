
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
typedef int sha256_block_fn ;


 int crypto_sha256_arm_finup (struct shash_desc*,int const*,unsigned int,int *) ;
 int crypto_simd_usable () ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;
 int sha256_base_do_finalize (struct shash_desc*,int *) ;
 int sha256_base_do_update (struct shash_desc*,int const*,unsigned int,int *) ;
 int sha256_base_finish (struct shash_desc*,int *) ;
 scalar_t__ sha256_block_data_order_neon ;

__attribute__((used)) static int crypto_sha256_neon_finup(struct shash_desc *desc, const u8 *data,
        unsigned int len, u8 *out)
{
 if (!crypto_simd_usable())
  return crypto_sha256_arm_finup(desc, data, len, out);

 kernel_neon_begin();
 if (len)
  sha256_base_do_update(desc, data, len,
   (sha256_block_fn *)sha256_block_data_order_neon);
 sha256_base_do_finalize(desc,
   (sha256_block_fn *)sha256_block_data_order_neon);
 kernel_neon_end();

 return sha256_base_finish(desc, out);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
typedef int sha256_block_fn ;


 int crypto_simd_usable () ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;
 int sha256_base_do_finalize (struct shash_desc*,int *) ;
 int sha256_base_do_update (struct shash_desc*,int const*,unsigned int,int *) ;
 int sha256_base_finish (struct shash_desc*,int *) ;
 scalar_t__ sha256_block_data_order ;
 scalar_t__ sha256_block_neon ;
 int sha256_update_neon (struct shash_desc*,int const*,unsigned int) ;

__attribute__((used)) static int sha256_finup_neon(struct shash_desc *desc, const u8 *data,
        unsigned int len, u8 *out)
{
 if (!crypto_simd_usable()) {
  if (len)
   sha256_base_do_update(desc, data, len,
    (sha256_block_fn *)sha256_block_data_order);
  sha256_base_do_finalize(desc,
    (sha256_block_fn *)sha256_block_data_order);
 } else {
  if (len)
   sha256_update_neon(desc, data, len);
  kernel_neon_begin();
  sha256_base_do_finalize(desc,
    (sha256_block_fn *)sha256_block_neon);
  kernel_neon_end();
 }
 return sha256_base_finish(desc, out);
}

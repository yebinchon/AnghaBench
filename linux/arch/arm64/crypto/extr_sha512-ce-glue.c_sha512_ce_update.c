
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
typedef int sha512_block_fn ;


 int crypto_simd_usable () ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;
 int sha512_base_do_update (struct shash_desc*,int const*,unsigned int,int *) ;
 scalar_t__ sha512_block_data_order ;
 scalar_t__ sha512_ce_transform ;

__attribute__((used)) static int sha512_ce_update(struct shash_desc *desc, const u8 *data,
       unsigned int len)
{
 if (!crypto_simd_usable())
  return sha512_base_do_update(desc, data, len,
    (sha512_block_fn *)sha512_block_data_order);

 kernel_neon_begin();
 sha512_base_do_update(desc, data, len,
         (sha512_block_fn *)sha512_ce_transform);
 kernel_neon_end();

 return 0;
}

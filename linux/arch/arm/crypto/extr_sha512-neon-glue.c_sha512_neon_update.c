
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
struct sha512_state {unsigned int* count; } ;
typedef int sha512_block_fn ;


 unsigned int SHA512_BLOCK_SIZE ;
 int crypto_simd_usable () ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;
 int sha512_arm_update (struct shash_desc*,int const*,unsigned int) ;
 int sha512_base_do_update (struct shash_desc*,int const*,unsigned int,int *) ;
 scalar_t__ sha512_block_data_order_neon ;
 struct sha512_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int sha512_neon_update(struct shash_desc *desc, const u8 *data,
         unsigned int len)
{
 struct sha512_state *sctx = shash_desc_ctx(desc);

 if (!crypto_simd_usable() ||
     (sctx->count[0] % SHA512_BLOCK_SIZE) + len < SHA512_BLOCK_SIZE)
  return sha512_arm_update(desc, data, len);

 kernel_neon_begin();
 sha512_base_do_update(desc, data, len,
  (sha512_block_fn *)sha512_block_data_order_neon);
 kernel_neon_end();

 return 0;
}

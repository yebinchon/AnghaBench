
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
struct sha256_state {unsigned int count; } ;
typedef int sha256_block_fn ;


 unsigned int SHA256_BLOCK_SIZE ;
 int crypto_sha256_arm_update (struct shash_desc*,int const*,unsigned int) ;
 int crypto_simd_usable () ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;
 int sha256_base_do_update (struct shash_desc*,int const*,unsigned int,int *) ;
 scalar_t__ sha2_ce_transform ;
 struct sha256_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int sha2_ce_update(struct shash_desc *desc, const u8 *data,
     unsigned int len)
{
 struct sha256_state *sctx = shash_desc_ctx(desc);

 if (!crypto_simd_usable() ||
     (sctx->count % SHA256_BLOCK_SIZE) + len < SHA256_BLOCK_SIZE)
  return crypto_sha256_arm_update(desc, data, len);

 kernel_neon_begin();
 sha256_base_do_update(desc, data, len,
         (sha256_block_fn *)sha2_ce_transform);
 kernel_neon_end();

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
struct sha1_state {unsigned int count; } ;
typedef int sha1_block_fn ;


 unsigned int SHA1_BLOCK_SIZE ;
 int crypto_simd_usable () ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;
 int sha1_base_do_update (struct shash_desc*,int const*,unsigned int,int *) ;
 scalar_t__ sha1_transform_neon ;
 int sha1_update_arm (struct shash_desc*,int const*,unsigned int) ;
 struct sha1_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int sha1_neon_update(struct shash_desc *desc, const u8 *data,
     unsigned int len)
{
 struct sha1_state *sctx = shash_desc_ctx(desc);

 if (!crypto_simd_usable() ||
     (sctx->count % SHA1_BLOCK_SIZE) + len < SHA1_BLOCK_SIZE)
  return sha1_update_arm(desc, data, len);

 kernel_neon_begin();
 sha1_base_do_update(desc, data, len,
       (sha1_block_fn *)sha1_transform_neon);
 kernel_neon_end();

 return 0;
}

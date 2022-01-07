
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
struct sha1_ce_state {scalar_t__ finalize; } ;
typedef int sha1_block_fn ;


 int crypto_sha1_update (struct shash_desc*,int const*,unsigned int) ;
 int crypto_simd_usable () ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;
 int sha1_base_do_update (struct shash_desc*,int const*,unsigned int,int *) ;
 scalar_t__ sha1_ce_transform ;
 struct sha1_ce_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int sha1_ce_update(struct shash_desc *desc, const u8 *data,
     unsigned int len)
{
 struct sha1_ce_state *sctx = shash_desc_ctx(desc);

 if (!crypto_simd_usable())
  return crypto_sha1_update(desc, data, len);

 sctx->finalize = 0;
 kernel_neon_begin();
 sha1_base_do_update(desc, data, len,
       (sha1_block_fn *)sha1_ce_transform);
 kernel_neon_end();

 return 0;
}

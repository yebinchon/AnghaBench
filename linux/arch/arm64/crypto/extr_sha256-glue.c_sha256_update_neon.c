
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
struct sha256_state {unsigned int count; } ;
typedef int sha256_block_fn ;


 int CONFIG_PREEMPT ;
 scalar_t__ IS_ENABLED (int ) ;
 unsigned int SHA256_BLOCK_SIZE ;
 int crypto_simd_usable () ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;
 int sha256_base_do_update (struct shash_desc*,int const*,unsigned int,int *) ;
 scalar_t__ sha256_block_data_order ;
 scalar_t__ sha256_block_neon ;
 struct sha256_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int sha256_update_neon(struct shash_desc *desc, const u8 *data,
         unsigned int len)
{
 struct sha256_state *sctx = shash_desc_ctx(desc);

 if (!crypto_simd_usable())
  return sha256_base_do_update(desc, data, len,
    (sha256_block_fn *)sha256_block_data_order);

 while (len > 0) {
  unsigned int chunk = len;






  if (IS_ENABLED(CONFIG_PREEMPT) &&
      chunk + sctx->count % SHA256_BLOCK_SIZE > SHA256_BLOCK_SIZE)
   chunk = SHA256_BLOCK_SIZE -
    sctx->count % SHA256_BLOCK_SIZE;

  kernel_neon_begin();
  sha256_base_do_update(desc, data, chunk,
          (sha256_block_fn *)sha256_block_neon);
  kernel_neon_end();
  data += chunk;
  len -= chunk;
 }
 return 0;
}

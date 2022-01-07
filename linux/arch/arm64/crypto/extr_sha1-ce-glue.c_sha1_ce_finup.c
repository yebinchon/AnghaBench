
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct shash_desc {int dummy; } ;
struct TYPE_2__ {int count; } ;
struct sha1_ce_state {int finalize; TYPE_1__ sst; } ;
typedef int sha1_block_fn ;


 unsigned int SHA1_BLOCK_SIZE ;
 int crypto_sha1_finup (struct shash_desc*,int const*,unsigned int,int *) ;
 int crypto_simd_usable () ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;
 int sha1_base_do_finalize (struct shash_desc*,int *) ;
 int sha1_base_do_update (struct shash_desc*,int const*,unsigned int,int *) ;
 int sha1_base_finish (struct shash_desc*,int *) ;
 scalar_t__ sha1_ce_transform ;
 struct sha1_ce_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int sha1_ce_finup(struct shash_desc *desc, const u8 *data,
    unsigned int len, u8 *out)
{
 struct sha1_ce_state *sctx = shash_desc_ctx(desc);
 bool finalize = !sctx->sst.count && !(len % SHA1_BLOCK_SIZE) && len;

 if (!crypto_simd_usable())
  return crypto_sha1_finup(desc, data, len, out);





 sctx->finalize = finalize;

 kernel_neon_begin();
 sha1_base_do_update(desc, data, len,
       (sha1_block_fn *)sha1_ce_transform);
 if (!finalize)
  sha1_base_do_finalize(desc, (sha1_block_fn *)sha1_ce_transform);
 kernel_neon_end();
 return sha1_base_finish(desc, out);
}

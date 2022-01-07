
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
struct sha512_state {unsigned int* count; } ;
struct octeon_cop2_state {int dummy; } ;


 unsigned int SHA512_BLOCK_SIZE ;
 int __octeon_sha512_update (struct sha512_state*,int const*,unsigned int) ;
 int crypto_sha512_update (struct shash_desc*,int const*,unsigned int) ;
 int octeon_crypto_disable (struct octeon_cop2_state*,unsigned long) ;
 unsigned long octeon_crypto_enable (struct octeon_cop2_state*) ;
 int octeon_sha512_read_hash (struct sha512_state*) ;
 int octeon_sha512_store_hash (struct sha512_state*) ;
 struct sha512_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int octeon_sha512_update(struct shash_desc *desc, const u8 *data,
    unsigned int len)
{
 struct sha512_state *sctx = shash_desc_ctx(desc);
 struct octeon_cop2_state state;
 unsigned long flags;






 if ((sctx->count[0] % SHA512_BLOCK_SIZE) + len < SHA512_BLOCK_SIZE)
  return crypto_sha512_update(desc, data, len);

 flags = octeon_crypto_enable(&state);
 octeon_sha512_store_hash(sctx);

 __octeon_sha512_update(sctx, data, len);

 octeon_sha512_read_hash(sctx);
 octeon_crypto_disable(&state, flags);

 return 0;
}

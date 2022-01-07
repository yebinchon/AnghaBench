
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
struct sha256_state {int count; int * state; } ;
struct octeon_cop2_state {int dummy; } ;
typedef int bits ;
typedef int __be64 ;
typedef int __be32 ;


 int __octeon_sha256_update (struct sha256_state*,int const*,int) ;
 int cpu_to_be32 (int ) ;
 int cpu_to_be64 (int) ;
 int memset (struct sha256_state*,int ,int) ;
 int octeon_crypto_disable (struct octeon_cop2_state*,unsigned long) ;
 unsigned long octeon_crypto_enable (struct octeon_cop2_state*) ;
 int octeon_sha256_read_hash (struct sha256_state*) ;
 int octeon_sha256_store_hash (struct sha256_state*) ;
 struct sha256_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int octeon_sha256_final(struct shash_desc *desc, u8 *out)
{
 struct sha256_state *sctx = shash_desc_ctx(desc);
 static const u8 padding[64] = { 0x80, };
 struct octeon_cop2_state state;
 __be32 *dst = (__be32 *)out;
 unsigned int pad_len;
 unsigned long flags;
 unsigned int index;
 __be64 bits;
 int i;


 bits = cpu_to_be64(sctx->count << 3);


 index = sctx->count & 0x3f;
 pad_len = (index < 56) ? (56 - index) : ((64+56) - index);

 flags = octeon_crypto_enable(&state);
 octeon_sha256_store_hash(sctx);

 __octeon_sha256_update(sctx, padding, pad_len);


 __octeon_sha256_update(sctx, (const u8 *)&bits, sizeof(bits));

 octeon_sha256_read_hash(sctx);
 octeon_crypto_disable(&state, flags);


 for (i = 0; i < 8; i++)
  dst[i] = cpu_to_be32(sctx->state[i]);


 memset(sctx, 0, sizeof(*sctx));

 return 0;
}

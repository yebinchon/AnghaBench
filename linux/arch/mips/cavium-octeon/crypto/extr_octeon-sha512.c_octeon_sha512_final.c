
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
struct sha512_state {int* count; int* state; } ;
struct octeon_cop2_state {int dummy; } ;
typedef int bits ;
typedef int __be64 ;


 int __octeon_sha512_update (struct sha512_state*,int const*,int) ;
 int cpu_to_be64 (int) ;
 int memset (struct sha512_state*,int ,int) ;
 int octeon_crypto_disable (struct octeon_cop2_state*,unsigned long) ;
 unsigned long octeon_crypto_enable (struct octeon_cop2_state*) ;
 int octeon_sha512_read_hash (struct sha512_state*) ;
 int octeon_sha512_store_hash (struct sha512_state*) ;
 struct sha512_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int octeon_sha512_final(struct shash_desc *desc, u8 *hash)
{
 struct sha512_state *sctx = shash_desc_ctx(desc);
 static u8 padding[128] = { 0x80, };
 struct octeon_cop2_state state;
 __be64 *dst = (__be64 *)hash;
 unsigned int pad_len;
 unsigned long flags;
 unsigned int index;
 __be64 bits[2];
 int i;


 bits[1] = cpu_to_be64(sctx->count[0] << 3);
 bits[0] = cpu_to_be64(sctx->count[1] << 3 | sctx->count[0] >> 61);


 index = sctx->count[0] & 0x7f;
 pad_len = (index < 112) ? (112 - index) : ((128+112) - index);

 flags = octeon_crypto_enable(&state);
 octeon_sha512_store_hash(sctx);

 __octeon_sha512_update(sctx, padding, pad_len);


 __octeon_sha512_update(sctx, (const u8 *)bits, sizeof(bits));

 octeon_sha512_read_hash(sctx);
 octeon_crypto_disable(&state, flags);


 for (i = 0; i < 8; i++)
  dst[i] = cpu_to_be64(sctx->state[i]);


 memset(sctx, 0, sizeof(struct sha512_state));

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct shash_desc {int dummy; } ;
struct sha1_state {int count; int * state; } ;
typedef int bits ;
typedef int __be64 ;
typedef int __be32 ;


 int cpu_to_be32 (int ) ;
 int cpu_to_be64 (int) ;
 int memset (struct sha1_state*,int ,int) ;
 int sha1_update (struct shash_desc*,int const*,int) ;
 struct sha1_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int sha1_final(struct shash_desc *desc, u8 *out)
{
 struct sha1_state *sctx = shash_desc_ctx(desc);
 __be32 *dst = (__be32 *)out;
 u32 i, index, padlen;
 __be64 bits;
 static const u8 padding[64] = { 0x80, };

 bits = cpu_to_be64(sctx->count << 3);


 index = sctx->count & 0x3f;
 padlen = (index < 56) ? (56 - index) : ((64+56) - index);
 sha1_update(desc, padding, padlen);


 sha1_update(desc, (const u8 *)&bits, sizeof(bits));


 for (i = 0; i < 5; i++)
  dst[i] = cpu_to_be32(sctx->state[i]);


 memset(sctx, 0, sizeof *sctx);

 return 0;
}

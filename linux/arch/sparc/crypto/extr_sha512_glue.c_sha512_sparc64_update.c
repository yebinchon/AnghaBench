
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
struct sha512_state {unsigned int* count; scalar_t__ buf; } ;


 unsigned int SHA512_BLOCK_SIZE ;
 int __sha512_sparc64_update (struct sha512_state*,int const*,unsigned int,unsigned int) ;
 int memcpy (scalar_t__,int const*,unsigned int) ;
 struct sha512_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int sha512_sparc64_update(struct shash_desc *desc, const u8 *data,
     unsigned int len)
{
 struct sha512_state *sctx = shash_desc_ctx(desc);
 unsigned int partial = sctx->count[0] % SHA512_BLOCK_SIZE;


 if (partial + len < SHA512_BLOCK_SIZE) {
  if ((sctx->count[0] += len) < len)
   sctx->count[1]++;
  memcpy(sctx->buf + partial, data, len);
 } else
  __sha512_sparc64_update(sctx, data, len, partial);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
struct sha256_state {unsigned int count; scalar_t__ buf; } ;


 unsigned int SHA256_BLOCK_SIZE ;
 int __sha256_sparc64_update (struct sha256_state*,int const*,unsigned int,unsigned int) ;
 int memcpy (scalar_t__,int const*,unsigned int) ;
 struct sha256_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int sha256_sparc64_update(struct shash_desc *desc, const u8 *data,
     unsigned int len)
{
 struct sha256_state *sctx = shash_desc_ctx(desc);
 unsigned int partial = sctx->count % SHA256_BLOCK_SIZE;


 if (partial + len < SHA256_BLOCK_SIZE) {
  sctx->count += len;
  memcpy(sctx->buf + partial, data, len);
 } else
  __sha256_sparc64_update(sctx, data, len, partial);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
struct sha256_state {int count; scalar_t__ buf; int state; } ;


 unsigned int MAX_BYTES ;
 int memcpy (char*,int const*,unsigned int const) ;
 int ppc_spe_sha256_transform (int ,int const*,unsigned int) ;
 struct sha256_state* shash_desc_ctx (struct shash_desc*) ;
 int spe_begin () ;
 int spe_end () ;

__attribute__((used)) static int ppc_spe_sha256_update(struct shash_desc *desc, const u8 *data,
   unsigned int len)
{
 struct sha256_state *sctx = shash_desc_ctx(desc);
 const unsigned int offset = sctx->count & 0x3f;
 const unsigned int avail = 64 - offset;
 unsigned int bytes;
 const u8 *src = data;

 if (avail > len) {
  sctx->count += len;
  memcpy((char *)sctx->buf + offset, src, len);
  return 0;
 }

 sctx->count += len;

 if (offset) {
  memcpy((char *)sctx->buf + offset, src, avail);

  spe_begin();
  ppc_spe_sha256_transform(sctx->state, (const u8 *)sctx->buf, 1);
  spe_end();

  len -= avail;
  src += avail;
 }

 while (len > 63) {

  bytes = (len > MAX_BYTES) ? MAX_BYTES : len;
  bytes = bytes & ~0x3f;

  spe_begin();
  ppc_spe_sha256_transform(sctx->state, src, bytes >> 6);
  spe_end();

  src += bytes;
  len -= bytes;
 };

 memcpy((char *)sctx->buf, src, len);
 return 0;
}

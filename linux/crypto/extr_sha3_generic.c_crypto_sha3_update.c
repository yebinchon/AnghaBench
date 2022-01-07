
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
struct sha3_state {unsigned int partial; int rsiz; unsigned int rsizw; int * buf; int * st; } ;


 int get_unaligned_le64 (int const*) ;
 int keccakf (int *) ;
 int memcpy (int *,int const*,unsigned int) ;
 struct sha3_state* shash_desc_ctx (struct shash_desc*) ;

int crypto_sha3_update(struct shash_desc *desc, const u8 *data,
         unsigned int len)
{
 struct sha3_state *sctx = shash_desc_ctx(desc);
 unsigned int done;
 const u8 *src;

 done = 0;
 src = data;

 if ((sctx->partial + len) > (sctx->rsiz - 1)) {
  if (sctx->partial) {
   done = -sctx->partial;
   memcpy(sctx->buf + sctx->partial, data,
          done + sctx->rsiz);
   src = sctx->buf;
  }

  do {
   unsigned int i;

   for (i = 0; i < sctx->rsizw; i++)
    sctx->st[i] ^= get_unaligned_le64(src + 8 * i);
   keccakf(sctx->st);

   done += sctx->rsiz;
   src = data + done;
  } while (done + (sctx->rsiz - 1) < len);

  sctx->partial = 0;
 }
 memcpy(sctx->buf + sctx->partial, src, len - done);
 sctx->partial += (len - done);

 return 0;
}

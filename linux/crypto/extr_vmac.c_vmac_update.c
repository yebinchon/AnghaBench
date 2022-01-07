
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vmac_tfm_ctx {int dummy; } ;
struct TYPE_2__ {int * bytes; } ;
struct vmac_desc_ctx {unsigned int nonce_size; int partial_size; int * partial; int const* partial_words; TYPE_1__ nonce; } ;
struct shash_desc {int tfm; } ;
typedef int __le64 ;


 unsigned int VMAC_NHBYTES ;
 unsigned int VMAC_NONCEBYTES ;
 struct vmac_tfm_ctx* crypto_shash_ctx (int ) ;
 int memcpy (int *,int const*,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 unsigned int round_down (unsigned int,unsigned int) ;
 struct vmac_desc_ctx* shash_desc_ctx (struct shash_desc*) ;
 int vhash_blocks (struct vmac_tfm_ctx const*,struct vmac_desc_ctx*,int const*,unsigned int) ;

__attribute__((used)) static int vmac_update(struct shash_desc *desc, const u8 *p, unsigned int len)
{
 const struct vmac_tfm_ctx *tctx = crypto_shash_ctx(desc->tfm);
 struct vmac_desc_ctx *dctx = shash_desc_ctx(desc);
 unsigned int n;


 if (dctx->nonce_size < VMAC_NONCEBYTES) {
  n = min(len, VMAC_NONCEBYTES - dctx->nonce_size);
  memcpy(&dctx->nonce.bytes[dctx->nonce_size], p, n);
  dctx->nonce_size += n;
  p += n;
  len -= n;
 }

 if (dctx->partial_size) {
  n = min(len, VMAC_NHBYTES - dctx->partial_size);
  memcpy(&dctx->partial[dctx->partial_size], p, n);
  dctx->partial_size += n;
  p += n;
  len -= n;
  if (dctx->partial_size == VMAC_NHBYTES) {
   vhash_blocks(tctx, dctx, dctx->partial_words, 1);
   dctx->partial_size = 0;
  }
 }

 if (len >= VMAC_NHBYTES) {
  n = round_down(len, VMAC_NHBYTES);

  vhash_blocks(tctx, dctx, (const __le64 *)p, n / VMAC_NHBYTES);
  p += n;
  len -= n;
 }

 if (len) {
  memcpy(dctx->partial, p, len);
  dctx->partial_size = len;
 }

 return 0;
}

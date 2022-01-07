
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
struct vmac_tfm_ctx {int cipher; } ;
struct TYPE_2__ {int* bytes; int * pads; } ;
struct vmac_desc_ctx {int nonce_size; TYPE_1__ nonce; } ;
struct shash_desc {int tfm; } ;


 int BUILD_BUG_ON (int) ;
 int EINVAL ;
 int VMAC_NONCEBYTES ;
 int VMAC_TAG_LEN ;
 scalar_t__ be64_to_cpu (int ) ;
 int crypto_cipher_encrypt_one (int ,int*,int*) ;
 struct vmac_tfm_ctx* crypto_shash_ctx (int ) ;
 int put_unaligned_be64 (scalar_t__,int *) ;
 struct vmac_desc_ctx* shash_desc_ctx (struct shash_desc*) ;
 scalar_t__ vhash_final (struct vmac_tfm_ctx const*,struct vmac_desc_ctx*) ;

__attribute__((used)) static int vmac_final(struct shash_desc *desc, u8 *out)
{
 const struct vmac_tfm_ctx *tctx = crypto_shash_ctx(desc->tfm);
 struct vmac_desc_ctx *dctx = shash_desc_ctx(desc);
 int index;
 u64 hash, pad;

 if (dctx->nonce_size != VMAC_NONCEBYTES)
  return -EINVAL;







 if (dctx->nonce.bytes[0] & 0x80)
  return -EINVAL;


 hash = vhash_final(tctx, dctx);


 BUILD_BUG_ON(VMAC_NONCEBYTES != 2 * (VMAC_TAG_LEN / 8));
 index = dctx->nonce.bytes[VMAC_NONCEBYTES - 1] & 1;
 dctx->nonce.bytes[VMAC_NONCEBYTES - 1] &= ~1;
 crypto_cipher_encrypt_one(tctx->cipher, dctx->nonce.bytes,
      dctx->nonce.bytes);
 pad = be64_to_cpu(dctx->nonce.pads[index]);


 put_unaligned_be64(hash + pad, out);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct s390_aes_ctx {int fc; } ;
struct blkcipher_walk {int dummy; } ;
struct blkcipher_desc {int tfm; } ;


 int CPACF_DECRYPT ;
 int blkcipher_walk_init (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 struct s390_aes_ctx* crypto_blkcipher_ctx (int ) ;
 int ecb_aes_crypt (struct blkcipher_desc*,int ,struct blkcipher_walk*) ;
 int fallback_blk_dec (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ecb_aes_decrypt(struct blkcipher_desc *desc,
      struct scatterlist *dst, struct scatterlist *src,
      unsigned int nbytes)
{
 struct s390_aes_ctx *sctx = crypto_blkcipher_ctx(desc->tfm);
 struct blkcipher_walk walk;

 if (unlikely(!sctx->fc))
  return fallback_blk_dec(desc, dst, src, nbytes);

 blkcipher_walk_init(&walk, dst, src, nbytes);
 return ecb_aes_crypt(desc, CPACF_DECRYPT, &walk);
}

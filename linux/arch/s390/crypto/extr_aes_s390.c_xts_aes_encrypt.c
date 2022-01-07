
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct s390_xts_ctx {int fc; } ;
struct blkcipher_walk {int dummy; } ;
struct blkcipher_desc {int tfm; } ;


 int EINVAL ;
 unsigned int XTS_BLOCK_SIZE ;
 int blkcipher_walk_init (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 struct s390_xts_ctx* crypto_blkcipher_ctx (int ) ;
 scalar_t__ unlikely (int) ;
 int xts_aes_crypt (struct blkcipher_desc*,int ,struct blkcipher_walk*) ;
 int xts_fallback_encrypt (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,unsigned int) ;

__attribute__((used)) static int xts_aes_encrypt(struct blkcipher_desc *desc,
      struct scatterlist *dst, struct scatterlist *src,
      unsigned int nbytes)
{
 struct s390_xts_ctx *xts_ctx = crypto_blkcipher_ctx(desc->tfm);
 struct blkcipher_walk walk;

 if (!nbytes)
  return -EINVAL;

 if (unlikely(!xts_ctx->fc || (nbytes % XTS_BLOCK_SIZE) != 0))
  return xts_fallback_encrypt(desc, dst, src, nbytes);

 blkcipher_walk_init(&walk, dst, src, nbytes);
 return xts_aes_crypt(desc, 0, &walk);
}

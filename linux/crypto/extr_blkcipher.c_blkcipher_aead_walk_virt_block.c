
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;
struct blkcipher_walk {unsigned int walk_blocksize; int alignmask; int ivsize; int cipher_blocksize; int flags; } ;
struct blkcipher_desc {int dummy; } ;


 int BLKCIPHER_WALK_PHYS ;
 int blkcipher_walk_first (struct blkcipher_desc*,struct blkcipher_walk*) ;
 int crypto_aead_alignmask (struct crypto_aead*) ;
 int crypto_aead_blocksize (struct crypto_aead*) ;
 int crypto_aead_ivsize (struct crypto_aead*) ;

int blkcipher_aead_walk_virt_block(struct blkcipher_desc *desc,
       struct blkcipher_walk *walk,
       struct crypto_aead *tfm,
       unsigned int blocksize)
{
 walk->flags &= ~BLKCIPHER_WALK_PHYS;
 walk->walk_blocksize = blocksize;
 walk->cipher_blocksize = crypto_aead_blocksize(tfm);
 walk->ivsize = crypto_aead_ivsize(tfm);
 walk->alignmask = crypto_aead_alignmask(tfm);
 return blkcipher_walk_first(desc, walk);
}

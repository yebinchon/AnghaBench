
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blkcipher_walk {unsigned int walk_blocksize; int alignmask; int ivsize; int cipher_blocksize; int flags; } ;
struct blkcipher_desc {int tfm; } ;


 int BLKCIPHER_WALK_PHYS ;
 int blkcipher_walk_first (struct blkcipher_desc*,struct blkcipher_walk*) ;
 int crypto_blkcipher_alignmask (int ) ;
 int crypto_blkcipher_blocksize (int ) ;
 int crypto_blkcipher_ivsize (int ) ;

int blkcipher_walk_virt_block(struct blkcipher_desc *desc,
         struct blkcipher_walk *walk,
         unsigned int blocksize)
{
 walk->flags &= ~BLKCIPHER_WALK_PHYS;
 walk->walk_blocksize = blocksize;
 walk->cipher_blocksize = crypto_blkcipher_blocksize(desc->tfm);
 walk->ivsize = crypto_blkcipher_ivsize(desc->tfm);
 walk->alignmask = crypto_blkcipher_alignmask(desc->tfm);
 return blkcipher_walk_first(desc, walk);
}

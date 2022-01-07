
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blkcipher_walk {int alignmask; int ivsize; int walk_blocksize; int cipher_blocksize; int flags; } ;
struct blkcipher_desc {int tfm; } ;


 int BLKCIPHER_WALK_PHYS ;
 int blkcipher_walk_first (struct blkcipher_desc*,struct blkcipher_walk*) ;
 int crypto_blkcipher_alignmask (int ) ;
 int crypto_blkcipher_blocksize (int ) ;
 int crypto_blkcipher_ivsize (int ) ;

int blkcipher_walk_virt(struct blkcipher_desc *desc,
   struct blkcipher_walk *walk)
{
 walk->flags &= ~BLKCIPHER_WALK_PHYS;
 walk->walk_blocksize = crypto_blkcipher_blocksize(desc->tfm);
 walk->cipher_blocksize = walk->walk_blocksize;
 walk->ivsize = crypto_blkcipher_ivsize(desc->tfm);
 walk->alignmask = crypto_blkcipher_alignmask(desc->tfm);
 return blkcipher_walk_first(desc, walk);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct skcipher_walk {unsigned int alignmask; unsigned int ivsize; unsigned int stride; int flags; int iv; int buffer; } ;


 unsigned int ALIGN (unsigned int,unsigned int) ;
 int ENOMEM ;
 int * PTR_ALIGN (int ,unsigned int) ;
 int SKCIPHER_WALK_PHYS ;
 int crypto_tfm_ctx_alignment () ;
 int kmalloc (unsigned int,int ) ;
 int memcpy (int *,int ,unsigned int) ;
 int * skcipher_get_spot (int *,unsigned int) ;
 int skcipher_walk_gfp (struct skcipher_walk*) ;

__attribute__((used)) static int skcipher_copy_iv(struct skcipher_walk *walk)
{
 unsigned a = crypto_tfm_ctx_alignment() - 1;
 unsigned alignmask = walk->alignmask;
 unsigned ivsize = walk->ivsize;
 unsigned bs = walk->stride;
 unsigned aligned_bs;
 unsigned size;
 u8 *iv;

 aligned_bs = ALIGN(bs, alignmask + 1);


 size = alignmask & ~a;

 if (walk->flags & SKCIPHER_WALK_PHYS)
  size += ivsize;
 else {
  size += aligned_bs + ivsize;


  size += (bs - 1) & ~(alignmask | a);
 }

 walk->buffer = kmalloc(size, skcipher_walk_gfp(walk));
 if (!walk->buffer)
  return -ENOMEM;

 iv = PTR_ALIGN(walk->buffer, alignmask + 1);
 iv = skcipher_get_spot(iv, bs) + aligned_bs;

 walk->iv = memcpy(iv, walk->iv, walk->ivsize);
 return 0;
}

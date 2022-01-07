
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_hash_walk {unsigned int alignmask; unsigned int offset; unsigned int entrylen; int flags; unsigned int data; int pg; } ;


 int CRYPTO_ALG_ASYNC ;
 scalar_t__ PAGE_SIZE ;
 unsigned int kmap (int ) ;
 unsigned int kmap_atomic (int ) ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static int hash_walk_next(struct crypto_hash_walk *walk)
{
 unsigned int alignmask = walk->alignmask;
 unsigned int offset = walk->offset;
 unsigned int nbytes = min(walk->entrylen,
      ((unsigned int)(PAGE_SIZE)) - offset);

 if (walk->flags & CRYPTO_ALG_ASYNC)
  walk->data = kmap(walk->pg);
 else
  walk->data = kmap_atomic(walk->pg);
 walk->data += offset;

 if (offset & alignmask) {
  unsigned int unaligned = alignmask + 1 - (offset & alignmask);

  if (nbytes > unaligned)
   nbytes = unaligned;
 }

 walk->entrylen -= nbytes;
 return nbytes;
}

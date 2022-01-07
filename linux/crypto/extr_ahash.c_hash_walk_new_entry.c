
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int offset; scalar_t__ length; } ;
struct crypto_hash_walk {int offset; scalar_t__ entrylen; scalar_t__ total; struct scatterlist* sg; scalar_t__ pg; } ;


 int PAGE_SHIFT ;
 int hash_walk_next (struct crypto_hash_walk*) ;
 int offset_in_page (int) ;
 scalar_t__ sg_page (struct scatterlist*) ;

__attribute__((used)) static int hash_walk_new_entry(struct crypto_hash_walk *walk)
{
 struct scatterlist *sg;

 sg = walk->sg;
 walk->offset = sg->offset;
 walk->pg = sg_page(walk->sg) + (walk->offset >> PAGE_SHIFT);
 walk->offset = offset_in_page(walk->offset);
 walk->entrylen = sg->length;

 if (walk->entrylen > walk->total)
  walk->entrylen = walk->total;
 walk->total -= walk->entrylen;

 return hash_walk_next(walk);
}

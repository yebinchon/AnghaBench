
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_walk {unsigned long alignmask; int * page; scalar_t__ iv; int * buffer; } ;


 int EDEADLK ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int in_irq () ;
 int skcipher_copy_iv (struct skcipher_walk*) ;
 int skcipher_walk_next (struct skcipher_walk*) ;
 scalar_t__ unlikely (unsigned long) ;

__attribute__((used)) static int skcipher_walk_first(struct skcipher_walk *walk)
{
 if (WARN_ON_ONCE(in_irq()))
  return -EDEADLK;

 walk->buffer = ((void*)0);
 if (unlikely(((unsigned long)walk->iv & walk->alignmask))) {
  int err = skcipher_copy_iv(walk);
  if (err)
   return err;
 }

 walk->page = ((void*)0);

 return skcipher_walk_next(walk);
}

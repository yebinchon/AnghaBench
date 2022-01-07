
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_walk {int buffers; int flags; } ;
struct skcipher_request {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int SKCIPHER_WALK_PHYS ;
 int skcipher_walk_skcipher (struct skcipher_walk*,struct skcipher_request*) ;

int skcipher_walk_async(struct skcipher_walk *walk,
   struct skcipher_request *req)
{
 walk->flags |= SKCIPHER_WALK_PHYS;

 INIT_LIST_HEAD(&walk->buffers);

 return skcipher_walk_skcipher(walk, req);
}

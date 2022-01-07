
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_walk {int flags; } ;


 int SKCIPHER_WALK_SLEEP ;

void skcipher_walk_atomise(struct skcipher_walk *walk)
{
 walk->flags &= ~SKCIPHER_WALK_SLEEP;
}

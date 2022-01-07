
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_walk {int flags; } ;
typedef int gfp_t ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int SKCIPHER_WALK_SLEEP ;

__attribute__((used)) static inline gfp_t skcipher_walk_gfp(struct skcipher_walk *walk)
{
 return walk->flags & SKCIPHER_WALK_SLEEP ? GFP_KERNEL : GFP_ATOMIC;
}

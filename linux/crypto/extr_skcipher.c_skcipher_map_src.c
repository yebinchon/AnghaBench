
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int addr; } ;
struct TYPE_4__ {TYPE_1__ virt; } ;
struct skcipher_walk {int in; TYPE_2__ src; } ;


 int skcipher_map (int *) ;

__attribute__((used)) static inline void skcipher_map_src(struct skcipher_walk *walk)
{
 walk->src.virt.addr = skcipher_map(&walk->in);
}

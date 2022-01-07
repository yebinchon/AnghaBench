
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct skcipher_walk {int flags; int out; scalar_t__ alignmask; scalar_t__ buffer; } ;


 scalar_t__ ALIGN (unsigned long,scalar_t__) ;
 int SKCIPHER_WALK_PHYS ;
 int scatterwalk_copychunks (int *,int *,unsigned int,int) ;
 int * skcipher_get_spot (int *,unsigned int) ;

__attribute__((used)) static int skcipher_done_slow(struct skcipher_walk *walk, unsigned int bsize)
{
 u8 *addr;

 addr = (u8 *)ALIGN((unsigned long)walk->buffer, walk->alignmask + 1);
 addr = skcipher_get_spot(addr, bsize);
 scatterwalk_copychunks(addr, &walk->out, bsize,
          (walk->flags & SKCIPHER_WALK_PHYS) ? 2 : 1);
 return 0;
}

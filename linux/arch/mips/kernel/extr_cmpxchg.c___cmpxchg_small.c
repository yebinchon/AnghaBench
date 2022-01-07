
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;


 unsigned int BITS_PER_BYTE ;
 int CONFIG_CPU_BIG_ENDIAN ;
 unsigned long GENMASK (unsigned int,int ) ;
 scalar_t__ IS_ENABLED (int ) ;
 int WARN_ON (unsigned long) ;
 unsigned long cmpxchg (unsigned long volatile*,unsigned long,unsigned long) ;

unsigned long __cmpxchg_small(volatile void *ptr, unsigned long old,
         unsigned long new, unsigned int size)
{
 u32 mask, old32, new32, load32, load;
 volatile u32 *ptr32;
 unsigned int shift;


 WARN_ON((unsigned long)ptr & (size - 1));


 mask = GENMASK((size * BITS_PER_BYTE) - 1, 0);
 old &= mask;
 new &= mask;






 shift = (unsigned long)ptr & 0x3;
 if (IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
  shift ^= sizeof(u32) - size;
 shift *= BITS_PER_BYTE;
 mask <<= shift;





 ptr32 = (volatile u32 *)((unsigned long)ptr & ~0x3);
 load32 = *ptr32;

 while (1) {




  load = (load32 & mask) >> shift;
  if (load != old)
   return load;







  old32 = (load32 & ~mask) | (old << shift);
  new32 = (load32 & ~mask) | (new << shift);
  load32 = cmpxchg(ptr32, old32, new32);
  if (load32 == old32)
   return old;
 }
}

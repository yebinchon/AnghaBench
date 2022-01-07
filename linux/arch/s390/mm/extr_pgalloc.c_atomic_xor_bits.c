
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_t ;


 unsigned int atomic_cmpxchg (int *,unsigned int,unsigned int) ;
 unsigned int atomic_read (int *) ;

__attribute__((used)) static inline unsigned int atomic_xor_bits(atomic_t *v, unsigned int bits)
{
 unsigned int old, new;

 do {
  old = atomic_read(v);
  new = old ^ bits;
 } while (atomic_cmpxchg(v, old, new) != old);
 return new;
}

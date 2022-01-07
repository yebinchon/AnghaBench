
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PPC_BITLSHIFT (int) ;

__attribute__((used)) static inline void tlbiel_hash_set_isa206(unsigned int set, unsigned int is)
{
 unsigned long rb;

 rb = (set << PPC_BITLSHIFT(51)) | (is << PPC_BITLSHIFT(53));

 asm volatile("tlbiel %0" : : "r" (rb));
}

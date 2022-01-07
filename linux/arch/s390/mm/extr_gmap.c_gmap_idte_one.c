
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void gmap_idte_one(unsigned long asce, unsigned long vaddr)
{
 asm volatile(
  "	.insn	rrf,0xb98e0000,%0,%1,0,0"
  : : "a" (asce), "a" (vaddr) : "cc", "memory");
}

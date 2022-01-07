
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PSR_IT_MASK ;

__attribute__((used)) static inline unsigned long it_advance(unsigned long cpsr)
 {
 if ((cpsr & 0x06000400) == 0) {

  cpsr &= ~PSR_IT_MASK;
 } else {

  const unsigned long mask = 0x06001c00;
  unsigned long it = cpsr & mask;
  it <<= 1;
  it |= it >> (27 - 10);
  it &= mask;
  cpsr &= ~mask;
  cpsr |= it;
 }
 return cpsr;
}

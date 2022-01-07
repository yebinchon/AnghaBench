
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long P1SEG ;
 unsigned long P3SEG ;

__attribute__((used)) static inline bool pmb_addr_valid(unsigned long addr, unsigned long size)
{
 return (addr >= P1SEG && (addr + size - 1) < P3SEG);
}

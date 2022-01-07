
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ILSEL_BASE ;
 int ilsel_offset (unsigned int) ;

__attribute__((used)) static inline unsigned long mk_ilsel_addr(unsigned int bit)
{
 return ILSEL_BASE + ((ilsel_offset(bit) >> 1) & ~0x1);
}

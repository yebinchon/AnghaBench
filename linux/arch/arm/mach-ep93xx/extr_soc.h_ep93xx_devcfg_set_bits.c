
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ep93xx_devcfg_set_clear (unsigned int,int) ;

__attribute__((used)) static inline void ep93xx_devcfg_set_bits(unsigned int bits)
{
 ep93xx_devcfg_set_clear(bits, 0x00);
}

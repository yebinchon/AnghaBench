
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int i2s_pll_get_value(unsigned int val)
{
 return (val & 0x3F) + ((val >> 6) & 0x3F);
}

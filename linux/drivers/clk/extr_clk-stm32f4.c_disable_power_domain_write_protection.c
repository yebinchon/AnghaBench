
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pdrm ;
 int regmap_update_bits (scalar_t__,int,int,int) ;

__attribute__((used)) static inline void disable_power_domain_write_protection(void)
{
 if (pdrm)
  regmap_update_bits(pdrm, 0x00, (1 << 8), (1 << 8));
}

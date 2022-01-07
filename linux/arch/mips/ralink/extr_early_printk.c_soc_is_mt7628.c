
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_SOC_MT7620 ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ MT7628_CHIP_NAME1 ;
 scalar_t__ __raw_readl (int ) ;
 int chipid_membase ;

__attribute__((used)) static inline int soc_is_mt7628(void)
{
 return IS_ENABLED(CONFIG_SOC_MT7620) &&
  (__raw_readl(chipid_membase) == MT7628_CHIP_NAME1);
}

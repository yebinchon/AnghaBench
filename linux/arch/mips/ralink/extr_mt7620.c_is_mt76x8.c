
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MT762X_SOC_MT7628AN ;
 scalar_t__ MT762X_SOC_MT7688 ;
 scalar_t__ ralink_soc ;

__attribute__((used)) static inline int is_mt76x8(void)
{
 return ralink_soc == MT762X_SOC_MT7628AN ||
        ralink_soc == MT762X_SOC_MT7688;
}

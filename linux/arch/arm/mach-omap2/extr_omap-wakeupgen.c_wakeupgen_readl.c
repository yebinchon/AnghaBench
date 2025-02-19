
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int CPU_ENA_OFFSET ;
 scalar_t__ OMAP_WKG_ENB_A_0 ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ wakeupgen_base ;

__attribute__((used)) static inline u32 wakeupgen_readl(u8 idx, u32 cpu)
{
 return readl_relaxed(wakeupgen_base + OMAP_WKG_ENB_A_0 +
    (cpu * CPU_ENA_OFFSET) + (idx * 4));
}

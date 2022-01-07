
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int CPU_ENA_OFFSET ;
 scalar_t__ OMAP_WKG_ENB_A_0 ;
 scalar_t__ wakeupgen_base ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static inline void wakeupgen_writel(u32 val, u8 idx, u32 cpu)
{
 writel_relaxed(val, wakeupgen_base + OMAP_WKG_ENB_A_0 +
    (cpu * CPU_ENA_OFFSET) + (idx * 4));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;


 scalar_t__ sar_base ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void sar_writel(u32 val, u32 offset, u8 idx)
{
 writel_relaxed(val, sar_base + offset + (idx * 4));
}

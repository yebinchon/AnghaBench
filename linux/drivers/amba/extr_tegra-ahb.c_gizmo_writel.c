
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_ahb {scalar_t__ regs; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void gizmo_writel(struct tegra_ahb *ahb, u32 value, u32 offset)
{
 writel(value, ahb->regs + offset);
}

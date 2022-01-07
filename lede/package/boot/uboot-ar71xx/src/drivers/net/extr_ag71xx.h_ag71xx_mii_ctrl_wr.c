
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ag71xx {int mii_ctrl; } ;


 int __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;

__attribute__((used)) static inline void ag71xx_mii_ctrl_wr(struct ag71xx *ag, u32 value)
{
 __raw_writel(value, ag->mii_ctrl);


 __raw_readl(ag->mii_ctrl);
}

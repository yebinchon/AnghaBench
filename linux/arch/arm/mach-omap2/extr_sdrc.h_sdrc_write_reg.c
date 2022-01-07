
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int OMAP_SDRC_REGADDR (int ) ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static inline void sdrc_write_reg(u32 val, u16 reg)
{
 writel_relaxed(val, OMAP_SDRC_REGADDR(reg));
}

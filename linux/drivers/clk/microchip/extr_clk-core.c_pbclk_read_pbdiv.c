
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pic32_periph_clk {int ctrl_reg; } ;


 int PB_DIV_MASK ;
 int PB_DIV_SHIFT ;
 int readl (int ) ;

__attribute__((used)) static inline u32 pbclk_read_pbdiv(struct pic32_periph_clk *pb)
{
 return ((readl(pb->ctrl_reg) >> PB_DIV_SHIFT) & PB_DIV_MASK) + 1;
}

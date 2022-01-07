
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_mux {int flags; int reg; } ;


 int CLK_MUX_BIG_ENDIAN ;
 int iowrite32be (int ,int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static inline void clk_mux_writel(struct clk_mux *mux, u32 val)
{
 if (mux->flags & CLK_MUX_BIG_ENDIAN)
  iowrite32be(val, mux->reg);
 else
  writel(val, mux->reg);
}

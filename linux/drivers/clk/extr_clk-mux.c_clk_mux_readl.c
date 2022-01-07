
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_mux {int flags; int reg; } ;


 int CLK_MUX_BIG_ENDIAN ;
 int ioread32be (int ) ;
 int readl (int ) ;

__attribute__((used)) static inline u32 clk_mux_readl(struct clk_mux *mux)
{
 if (mux->flags & CLK_MUX_BIG_ENDIAN)
  return ioread32be(mux->reg);

 return readl(mux->reg);
}

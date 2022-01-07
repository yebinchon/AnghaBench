
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct clk {unsigned long rate; } ;
struct TYPE_6__ {int rate; } ;
struct TYPE_5__ {unsigned long rate; unsigned long cfg; unsigned long div; unsigned long mrate; int prate; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int PM_DIVCFG ;
 int PM_DIVCFG_VGACLK (unsigned long) ;
 int PM_DIVCFG_VGACLK_MASK ;
 int PM_DIVSTATUS ;
 int PM_PCGR ;
 int PM_PCGR_VGACLK ;
 int PM_PLLDFCDONE ;
 int PM_PLLDFCDONE_SYSDFC ;
 int PM_PLLDFCDONE_VGADFC ;
 int PM_PLLSYSCFG ;
 int PM_PLLVGACFG ;
 int PM_PMCR ;
 int PM_PMCR_CFBSYS ;
 int PM_PMCR_CFBVGA ;
 int PM_SWRESET ;
 int PM_SWRESET_VGADIV ;
 TYPE_3__ clk_bclk32_clk ;
 struct clk clk_mclk_clk ;
 struct clk clk_vga_clk ;
 TYPE_1__* mclk_clk_table ;
 int readl (int ) ;
 int udelay (int) ;
 TYPE_1__* vga_clk_table ;
 int writel (int,int ) ;

int clk_set_rate(struct clk *clk, unsigned long rate)
{
 if (clk == &clk_vga_clk) {
  unsigned long pll_vgacfg, pll_vgadiv;
  int ret, i;


  ret = -EINVAL;
  for (i = 0; i < ARRAY_SIZE(vga_clk_table); i++) {
   if (rate == vga_clk_table[i].rate) {
    pll_vgacfg = vga_clk_table[i].cfg;
    pll_vgadiv = vga_clk_table[i].div;
    ret = 0;
    break;
   }
  }

  if (ret)
   return ret;

  if (readl(PM_PLLVGACFG) == pll_vgacfg)
   return 0;


  writel(pll_vgacfg, PM_PLLVGACFG);

  writel(PM_PMCR_CFBVGA, PM_PMCR);
  while ((readl(PM_PLLDFCDONE) & PM_PLLDFCDONE_VGADFC)
    != PM_PLLDFCDONE_VGADFC)
   udelay(100);


  writel(readl(PM_PCGR) | PM_PCGR_VGACLK, PM_PCGR);

  writel((readl(PM_DIVCFG) & ~PM_DIVCFG_VGACLK_MASK)
    | PM_DIVCFG_VGACLK(pll_vgadiv), PM_DIVCFG);

  writel(readl(PM_SWRESET) | PM_SWRESET_VGADIV, PM_SWRESET);
  while ((readl(PM_SWRESET) & PM_SWRESET_VGADIV)
    == PM_SWRESET_VGADIV)
   udelay(100);

  writel(readl(PM_PCGR) & ~PM_PCGR_VGACLK, PM_PCGR);
 }
 return 0;
}

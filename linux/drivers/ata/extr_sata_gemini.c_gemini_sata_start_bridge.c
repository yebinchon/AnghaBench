
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sata_gemini {struct clk* sata1_pclk; struct clk* sata0_pclk; } ;
struct clk {int dummy; } ;


 int clk_disable (struct clk*) ;
 int clk_enable (struct clk*) ;
 int gemini_sata_setup_bridge (struct sata_gemini*,unsigned int) ;
 int msleep (int) ;

int gemini_sata_start_bridge(struct sata_gemini *sg, unsigned int bridge)
{
 struct clk *pclk;
 int ret;

 if (bridge == 0)
  pclk = sg->sata0_pclk;
 else
  pclk = sg->sata1_pclk;
 clk_enable(pclk);
 msleep(10);


 ret = gemini_sata_setup_bridge(sg, bridge);
 if (ret)
  clk_disable(pclk);

 return ret;
}

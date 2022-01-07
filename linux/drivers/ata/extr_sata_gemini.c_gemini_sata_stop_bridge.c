
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sata_gemini {int sata1_pclk; int sata0_pclk; } ;


 int clk_disable (int ) ;

void gemini_sata_stop_bridge(struct sata_gemini *sg, unsigned int bridge)
{
 if (bridge == 0)
  clk_disable(sg->sata0_pclk);
 else if (bridge == 1)
  clk_disable(sg->sata1_pclk);
}

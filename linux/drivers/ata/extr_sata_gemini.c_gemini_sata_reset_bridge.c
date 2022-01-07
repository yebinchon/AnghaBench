
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sata_gemini {int sata1_reset; int sata0_reset; } ;


 int gemini_sata_setup_bridge (struct sata_gemini*,unsigned int) ;
 int msleep (int) ;
 int reset_control_reset (int ) ;

int gemini_sata_reset_bridge(struct sata_gemini *sg,
        unsigned int bridge)
{
 if (bridge == 0)
  reset_control_reset(sg->sata0_reset);
 else
  reset_control_reset(sg->sata1_reset);
 msleep(10);
 return gemini_sata_setup_bridge(sg, bridge);
}

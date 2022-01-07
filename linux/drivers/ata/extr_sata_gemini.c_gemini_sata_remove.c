
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sata_gemini {int sata0_pclk; int sata1_pclk; scalar_t__ sata_bridge; } ;
struct platform_device {int dummy; } ;


 int clk_unprepare (int ) ;
 struct sata_gemini* platform_get_drvdata (struct platform_device*) ;
 int * sg_singleton ;

__attribute__((used)) static int gemini_sata_remove(struct platform_device *pdev)
{
 struct sata_gemini *sg = platform_get_drvdata(pdev);

 if (sg->sata_bridge) {
  clk_unprepare(sg->sata1_pclk);
  clk_unprepare(sg->sata0_pclk);
 }
 sg_singleton = ((void*)0);

 return 0;
}

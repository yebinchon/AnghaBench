
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int mtk_syst_clkevt_shutdown (struct clock_event_device*) ;

__attribute__((used)) static int mtk_syst_clkevt_resume(struct clock_event_device *clkevt)
{
 return mtk_syst_clkevt_shutdown(clkevt);
}

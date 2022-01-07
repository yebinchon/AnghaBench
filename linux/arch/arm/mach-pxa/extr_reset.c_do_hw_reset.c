
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MDREFR ;
 scalar_t__ MDREFR_SLFRSH ;
 int OSCR ;
 int OSMR3 ;
 int OSSR ;
 scalar_t__ OSSR_M3 ;
 int OWER ;
 scalar_t__ OWER_WME ;
 scalar_t__ readl_relaxed (int ) ;
 int writel_relaxed (scalar_t__,int ) ;

__attribute__((used)) static void do_hw_reset(void)
{

 writel_relaxed(OWER_WME, OWER);
 writel_relaxed(OSSR_M3, OSSR);

 writel_relaxed(readl_relaxed(OSCR) + 368640, OSMR3);




 while (1)
  writel_relaxed(MDREFR_SLFRSH, MDREFR);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int OST_OIER ;
 int OST_OIER_E0 ;
 int OST_OSSR ;
 int OST_OSSR_M0 ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int puv3_osmr0_shutdown(struct clock_event_device *evt)
{
 writel(readl(OST_OIER) & ~OST_OIER_E0, OST_OIER);
 writel(readl(OST_OSSR) & ~OST_OSSR_M0, OST_OSSR);
 return 0;
}

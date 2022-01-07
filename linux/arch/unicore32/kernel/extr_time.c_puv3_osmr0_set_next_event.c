
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int ETIME ;
 int MIN_OSCR_DELTA ;
 int OST_OIER ;
 unsigned long OST_OIER_E0 ;
 int OST_OSCR ;
 int OST_OSMR0 ;
 unsigned long readl (int ) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static int
puv3_osmr0_set_next_event(unsigned long delta, struct clock_event_device *c)
{
 unsigned long next, oscr;

 writel(readl(OST_OIER) | OST_OIER_E0, OST_OIER);
 next = readl(OST_OSCR) + delta;
 writel(next, OST_OSMR0);
 oscr = readl(OST_OSCR);

 return (signed)(next - oscr) <= MIN_OSCR_DELTA ? -ETIME : 0;
}

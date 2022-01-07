
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clocksource {int dummy; } ;


 int OST_OSCR ;
 int readl (int ) ;

__attribute__((used)) static u64 puv3_read_oscr(struct clocksource *cs)
{
 return readl(OST_OSCR);
}

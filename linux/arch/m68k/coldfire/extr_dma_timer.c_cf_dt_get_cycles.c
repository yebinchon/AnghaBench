
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clocksource {int dummy; } ;


 int DTCN0 ;
 int __raw_readl (int ) ;

__attribute__((used)) static u64 cf_dt_get_cycles(struct clocksource *cs)
{
 return __raw_readl(DTCN0);
}

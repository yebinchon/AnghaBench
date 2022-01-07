
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clocksource {int dummy; } ;


 int A_SCD_ZBBUS_CYCLE_COUNT ;
 int IOADDR (int ) ;
 int __raw_readq (int ) ;

__attribute__((used)) static u64 bcm1480_hpt_read(struct clocksource *cs)
{
 return (u64) __raw_readq(IOADDR(A_SCD_ZBBUS_CYCLE_COUNT));
}

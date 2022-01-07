
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct clocksource {int dummy; } ;


 scalar_t__ ATMEL_TC_REG (int,int ) ;
 int CV ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ tcaddr ;

__attribute__((used)) static u64 tc_get_cycles(struct clocksource *cs)
{
 unsigned long flags;
 u32 lower, upper;

 raw_local_irq_save(flags);
 do {
  upper = readl_relaxed(tcaddr + ATMEL_TC_REG(1, CV));
  lower = readl_relaxed(tcaddr + ATMEL_TC_REG(0, CV));
 } while (upper != readl_relaxed(tcaddr + ATMEL_TC_REG(1, CV)));

 raw_local_irq_restore(flags);
 return (upper << 16) | lower;
}

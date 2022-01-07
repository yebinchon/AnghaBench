
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clocksource {int dummy; } ;


 scalar_t__ ATMEL_TC_REG (int ,int ) ;
 int CV ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ tcaddr ;

__attribute__((used)) static u64 tc_get_cycles32(struct clocksource *cs)
{
 return readl_relaxed(tcaddr + ATMEL_TC_REG(0, CV));
}

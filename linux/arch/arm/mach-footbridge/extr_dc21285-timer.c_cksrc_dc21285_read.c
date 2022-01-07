
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct clocksource {scalar_t__ mask; } ;


 scalar_t__* CSR_TIMER2_VALUE ;

__attribute__((used)) static u64 cksrc_dc21285_read(struct clocksource *cs)
{
 return cs->mask - *CSR_TIMER2_VALUE;
}

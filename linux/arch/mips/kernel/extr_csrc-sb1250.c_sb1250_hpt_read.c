
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clocksource {int dummy; } ;


 int sb1250_hpt_get_cycles () ;

__attribute__((used)) static u64 sb1250_hpt_read(struct clocksource *cs)
{
 return sb1250_hpt_get_cycles();
}

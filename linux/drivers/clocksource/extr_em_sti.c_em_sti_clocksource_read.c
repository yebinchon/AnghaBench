
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clocksource {int dummy; } ;


 int cs_to_em_sti (struct clocksource*) ;
 int em_sti_count (int ) ;

__attribute__((used)) static u64 em_sti_clocksource_read(struct clocksource *cs)
{
 return em_sti_count(cs_to_em_sti(cs));
}

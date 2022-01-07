
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sh_tmu_channel {int dummy; } ;
struct clocksource {int dummy; } ;


 int TCNT ;
 struct sh_tmu_channel* cs_to_sh_tmu (struct clocksource*) ;
 int sh_tmu_read (struct sh_tmu_channel*,int ) ;

__attribute__((used)) static u64 sh_tmu_clocksource_read(struct clocksource *cs)
{
 struct sh_tmu_channel *ch = cs_to_sh_tmu(cs);

 return sh_tmu_read(ch, TCNT) ^ 0xffffffff;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pit_data {int cnt; int cycle; int base; } ;
struct clocksource {int dummy; } ;


 int AT91_PIT_PIIR ;
 scalar_t__ PIT_CPIV (int) ;
 int PIT_PICNT (int) ;
 struct pit_data* clksrc_to_pit_data (struct clocksource*) ;
 int pit_read (int ,int ) ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;

__attribute__((used)) static u64 read_pit_clk(struct clocksource *cs)
{
 struct pit_data *data = clksrc_to_pit_data(cs);
 unsigned long flags;
 u32 elapsed;
 u32 t;

 raw_local_irq_save(flags);
 elapsed = data->cnt;
 t = pit_read(data->base, AT91_PIT_PIIR);
 raw_local_irq_restore(flags);

 elapsed += PIT_PICNT(t) * data->cycle;
 elapsed += PIT_CPIV(t);
 return elapsed;
}

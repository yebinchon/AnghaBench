
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clocksource {char const* name; int rating; int flags; int mask; int resume; int suspend; int disable; int enable; int read; } ;
struct sh_tmu_channel {TYPE_2__* tmu; int index; struct clocksource cs; } ;
struct TYPE_4__ {int rate; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int CLOCKSOURCE_MASK (int) ;
 int CLOCK_SOURCE_IS_CONTINUOUS ;
 int clocksource_register_hz (struct clocksource*,int ) ;
 int dev_info (int *,char*,int ) ;
 int sh_tmu_clocksource_disable ;
 int sh_tmu_clocksource_enable ;
 int sh_tmu_clocksource_read ;
 int sh_tmu_clocksource_resume ;
 int sh_tmu_clocksource_suspend ;

__attribute__((used)) static int sh_tmu_register_clocksource(struct sh_tmu_channel *ch,
           const char *name)
{
 struct clocksource *cs = &ch->cs;

 cs->name = name;
 cs->rating = 200;
 cs->read = sh_tmu_clocksource_read;
 cs->enable = sh_tmu_clocksource_enable;
 cs->disable = sh_tmu_clocksource_disable;
 cs->suspend = sh_tmu_clocksource_suspend;
 cs->resume = sh_tmu_clocksource_resume;
 cs->mask = CLOCKSOURCE_MASK(32);
 cs->flags = CLOCK_SOURCE_IS_CONTINUOUS;

 dev_info(&ch->tmu->pdev->dev, "ch%u: used as clock source\n",
   ch->index);

 clocksource_register_hz(cs, ch->tmu->rate);
 return 0;
}

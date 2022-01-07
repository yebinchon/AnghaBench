
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct clocksource {char const* name; int rating; int flags; int mask; int resume; int suspend; int disable; int enable; int read; } ;
struct sh_cmt_channel {TYPE_2__* cmt; int index; struct clocksource cs; } ;
struct TYPE_4__ {int rate; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int CLOCKSOURCE_MASK (int) ;
 int CLOCK_SOURCE_IS_CONTINUOUS ;
 int clocksource_register_hz (struct clocksource*,int ) ;
 int dev_info (int *,char*,int ) ;
 int sh_cmt_clocksource_disable ;
 int sh_cmt_clocksource_enable ;
 int sh_cmt_clocksource_read ;
 int sh_cmt_clocksource_resume ;
 int sh_cmt_clocksource_suspend ;

__attribute__((used)) static int sh_cmt_register_clocksource(struct sh_cmt_channel *ch,
           const char *name)
{
 struct clocksource *cs = &ch->cs;

 cs->name = name;
 cs->rating = 125;
 cs->read = sh_cmt_clocksource_read;
 cs->enable = sh_cmt_clocksource_enable;
 cs->disable = sh_cmt_clocksource_disable;
 cs->suspend = sh_cmt_clocksource_suspend;
 cs->resume = sh_cmt_clocksource_resume;
 cs->mask = CLOCKSOURCE_MASK(sizeof(u64) * 8);
 cs->flags = CLOCK_SOURCE_IS_CONTINUOUS;

 dev_info(&ch->cmt->pdev->dev, "ch%u: used as clock source\n",
   ch->index);

 clocksource_register_hz(cs, ch->cmt->rate);
 return 0;
}

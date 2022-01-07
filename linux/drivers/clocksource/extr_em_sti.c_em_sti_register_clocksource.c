
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clocksource {int rating; int flags; int mask; int resume; void* suspend; void* disable; int enable; int read; int name; } ;
struct em_sti_priv {int rate; TYPE_1__* pdev; struct clocksource cs; } ;
struct TYPE_2__ {int dev; } ;


 int CLOCKSOURCE_MASK (int) ;
 int CLOCK_SOURCE_IS_CONTINUOUS ;
 int clocksource_register_hz (struct clocksource*,int ) ;
 int dev_info (int *,char*) ;
 int dev_name (int *) ;
 void* em_sti_clocksource_disable ;
 int em_sti_clocksource_enable ;
 int em_sti_clocksource_read ;
 int em_sti_clocksource_resume ;

__attribute__((used)) static int em_sti_register_clocksource(struct em_sti_priv *p)
{
 struct clocksource *cs = &p->cs;

 cs->name = dev_name(&p->pdev->dev);
 cs->rating = 200;
 cs->read = em_sti_clocksource_read;
 cs->enable = em_sti_clocksource_enable;
 cs->disable = em_sti_clocksource_disable;
 cs->suspend = em_sti_clocksource_disable;
 cs->resume = em_sti_clocksource_resume;
 cs->mask = CLOCKSOURCE_MASK(48);
 cs->flags = CLOCK_SOURCE_IS_CONTINUOUS;

 dev_info(&p->pdev->dev, "used as clock source\n");

 clocksource_register_hz(cs, p->rate);
 return 0;
}

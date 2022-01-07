
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_tmu_channel {int periodic; TYPE_1__* tmu; } ;
struct TYPE_2__ {int rate; } ;


 int HZ ;
 int sh_tmu_enable (struct sh_tmu_channel*) ;
 int sh_tmu_set_next (struct sh_tmu_channel*,int,int) ;

__attribute__((used)) static void sh_tmu_clock_event_start(struct sh_tmu_channel *ch, int periodic)
{
 sh_tmu_enable(ch);

 if (periodic) {
  ch->periodic = (ch->tmu->rate + HZ/2) / HZ;
  sh_tmu_set_next(ch, ch->periodic, 1);
 }
}

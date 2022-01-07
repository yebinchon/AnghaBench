
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_4__ {TYPE_1__* aud; int dmacon; } ;
struct TYPE_3__ {int audper; } ;


 int DMAF_AUD2 ;
 int amiga_audio_period ;
 TYPE_2__ custom ;

__attribute__((used)) static void nosound(struct timer_list *unused)
{

 custom.dmacon = DMAF_AUD2;

 custom.aud[2].audper = amiga_audio_period;
}

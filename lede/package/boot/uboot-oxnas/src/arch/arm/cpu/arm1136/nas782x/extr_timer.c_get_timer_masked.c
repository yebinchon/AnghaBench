
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_3__ {int lastinc; int tbl; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 int CONFIG_SYS_HZ ;
 int READ_TIMER ;
 int TIMER_CLOCK ;
 int TIMER_LOAD_VAL ;
 TYPE_2__* gd ;

ulong get_timer_masked (void)
{
 ulong now = READ_TIMER;

 if (now >= gd->arch.lastinc) {

  gd->arch.tbl += (now - gd->arch.lastinc);
 } else {

  gd->arch.tbl += ((TIMER_LOAD_VAL / (TIMER_CLOCK / CONFIG_SYS_HZ))
     - gd->arch.lastinc) + now;
 }
 gd->arch.lastinc = now;
 return gd->arch.tbl;
}

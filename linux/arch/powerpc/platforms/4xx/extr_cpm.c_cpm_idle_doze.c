
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idle_doze; } ;


 TYPE_1__ cpm ;
 int cpm_idle_sleep (int ) ;

__attribute__((used)) static void cpm_idle_doze(void)
{
 cpm_idle_sleep(cpm.idle_doze);
}

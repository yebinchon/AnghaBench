
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enabled; } ;


 size_t CPM_IDLE_DOZE ;
 int cpm_idle_doze () ;
 int cpm_idle_wait () ;
 TYPE_1__* idle_mode ;

__attribute__((used)) static void cpm_idle(void)
{
 if (idle_mode[CPM_IDLE_DOZE].enabled)
  cpm_idle_doze();
 else
  cpm_idle_wait();
}

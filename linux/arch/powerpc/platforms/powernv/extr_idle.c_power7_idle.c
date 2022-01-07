
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PNV_THREAD_NAP ;
 int power7_idle_type (int ) ;
 int powersave_nap ;

void power7_idle(void)
{
 if (!powersave_nap)
  return;

 power7_idle_type(PNV_THREAD_NAP);
}

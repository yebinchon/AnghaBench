
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ debug_active ;
 scalar_t__ debug_stoppable ;

void debug_stop_all(void)
{
 if (debug_stoppable)
  debug_active = 0;
}

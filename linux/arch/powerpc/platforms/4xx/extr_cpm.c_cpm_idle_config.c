
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enabled; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* idle_mode ;

__attribute__((used)) static void cpm_idle_config(int mode)
{
 int i;

 if (idle_mode[mode].enabled)
  return;

 for (i = 0; i < ARRAY_SIZE(idle_mode); i++)
  idle_mode[i].enabled = 0;

 idle_mode[mode].enabled = 1;
}

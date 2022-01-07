
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int cycles_t ;
struct TYPE_3__ {scalar_t__ base; } ;
struct TYPE_4__ {int cs; TYPE_1__ timer; } ;


 TYPE_2__ nios2_cs ;
 int nios2_timer_read (int *) ;

cycles_t get_cycles(void)
{

 if (nios2_cs.timer.base)
  return nios2_timer_read(&nios2_cs.cs);
 return 0;
}

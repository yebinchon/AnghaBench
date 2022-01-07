
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;


 int Sys_Milliseconds () ;
 TYPE_1__* com_timescale ;

int CL_ScaledMilliseconds(void) {
 return Sys_Milliseconds()*com_timescale->value;
}

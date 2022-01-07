
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int interrupts; } ;


 TYPE_1__* tau ;

u32 tau_interrupts(unsigned long cpu)
{
 return (tau[cpu].interrupts);
}

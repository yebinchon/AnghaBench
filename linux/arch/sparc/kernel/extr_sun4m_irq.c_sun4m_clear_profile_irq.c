
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int l14_limit; } ;


 int sbus_readl (int *) ;
 TYPE_1__** timers_percpu ;

void sun4m_clear_profile_irq(int cpu)
{
 sbus_readl(&timers_percpu[cpu]->l14_limit);
}

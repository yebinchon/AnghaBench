
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idle; } ;


 int cede_processor () ;
 TYPE_1__* get_lppaca () ;
 int prep_irq_for_idle () ;

__attribute__((used)) static void pseries_lpar_idle(void)
{





 if (!prep_irq_for_idle())
  return;


 get_lppaca()->idle = 1;
 cede_processor();

 get_lppaca()->idle = 0;
}

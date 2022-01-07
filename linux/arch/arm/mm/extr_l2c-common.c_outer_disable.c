
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* disable ) () ;} ;


 int WARN_ON (int) ;
 int irqs_disabled () ;
 int num_online_cpus () ;
 TYPE_1__ outer_cache ;
 int stub1 () ;

void outer_disable(void)
{
 WARN_ON(!irqs_disabled());
 WARN_ON(num_online_cpus() > 1);

 if (outer_cache.disable)
  outer_cache.disable();
}

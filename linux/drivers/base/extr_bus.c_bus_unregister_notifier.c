
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct bus_type {TYPE_1__* p; } ;
struct TYPE_2__ {int bus_notifier; } ;


 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;

int bus_unregister_notifier(struct bus_type *bus, struct notifier_block *nb)
{
 return blocking_notifier_chain_unregister(&bus->p->bus_notifier, nb);
}

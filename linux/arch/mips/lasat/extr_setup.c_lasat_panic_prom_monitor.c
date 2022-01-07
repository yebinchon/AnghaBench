
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int prom_monitor () ;

__attribute__((used)) static int lasat_panic_prom_monitor(struct notifier_block *this,
        unsigned long event, void *ptr)
{
 prom_monitor();
 return NOTIFY_DONE;
}

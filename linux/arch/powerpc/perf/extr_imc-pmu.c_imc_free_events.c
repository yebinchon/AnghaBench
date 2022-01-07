
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imc_events {struct imc_events* name; struct imc_events* scale; struct imc_events* unit; } ;


 int kfree (struct imc_events*) ;

__attribute__((used)) static void imc_free_events(struct imc_events *events, int nr_entries)
{
 int i;


 if (!events)
  return;
 for (i = 0; i < nr_entries; i++) {
  kfree(events[i].unit);
  kfree(events[i].scale);
  kfree(events[i].name);
 }

 kfree(events);
}

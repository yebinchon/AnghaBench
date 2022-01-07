
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct event_counter* name; } ;
struct event_counter {TYPE_1__ attr; } ;


 struct event_counter* all_attrs ;
 struct event_counter* all_counters ;
 struct event_counter* counter_attrs ;
 int kfree (struct event_counter*) ;
 int num_gpes ;

__attribute__((used)) static void delete_gpe_attr_array(void)
{
 struct event_counter *tmp = all_counters;

 all_counters = ((void*)0);
 kfree(tmp);

 if (counter_attrs) {
  int i;

  for (i = 0; i < num_gpes; i++)
   kfree(counter_attrs[i].attr.name);

  kfree(counter_attrs);
 }
 kfree(all_attrs);

 return;
}

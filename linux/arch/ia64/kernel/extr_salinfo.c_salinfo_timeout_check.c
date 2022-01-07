
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct salinfo_data {int read_wait; int cpu_event; int open; } ;


 int cpumask_empty (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void
salinfo_timeout_check(struct salinfo_data *data)
{
 if (!data->open)
  return;
 if (!cpumask_empty(&data->cpu_event))
  wake_up_interruptible(&data->read_wait);
}

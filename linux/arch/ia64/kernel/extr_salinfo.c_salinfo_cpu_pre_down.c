
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct salinfo_data_saved {unsigned int cpu; int cpu_event; scalar_t__ buffer; struct salinfo_data_saved* data_saved; } ;
struct salinfo_data {unsigned int cpu; int cpu_event; scalar_t__ buffer; struct salinfo_data* data_saved; } ;


 int ARRAY_SIZE (struct salinfo_data_saved*) ;
 int cpumask_clear_cpu (unsigned int,int *) ;
 int data_saved_lock ;
 struct salinfo_data_saved* salinfo_data ;
 int shift1_data_saved (struct salinfo_data_saved*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int salinfo_cpu_pre_down(unsigned int cpu)
{
 unsigned int i, end = ARRAY_SIZE(salinfo_data);
 struct salinfo_data *data;

 spin_lock_irq(&data_saved_lock);
 for (i = 0, data = salinfo_data; i < end; ++i, ++data) {
  struct salinfo_data_saved *data_saved;
  int j = ARRAY_SIZE(data->data_saved) - 1;

  for (data_saved = data->data_saved + j; j >= 0;
       --j, --data_saved) {
   if (data_saved->buffer && data_saved->cpu == cpu)
    shift1_data_saved(data, j);
  }
  cpumask_clear_cpu(cpu, &data->cpu_event);
 }
 spin_unlock_irq(&data_saved_lock);
 return 0;
}

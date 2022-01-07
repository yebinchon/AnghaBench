
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct salinfo_data {int read_wait; int cpu_event; } ;


 unsigned int ARRAY_SIZE (struct salinfo_data*) ;
 int cpumask_set_cpu (unsigned int,int *) ;
 int data_saved_lock ;
 struct salinfo_data* salinfo_data ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int salinfo_cpu_online(unsigned int cpu)
{
 unsigned int i, end = ARRAY_SIZE(salinfo_data);
 struct salinfo_data *data;

 spin_lock_irq(&data_saved_lock);
 for (i = 0, data = salinfo_data; i < end; ++i, ++data) {
  cpumask_set_cpu(cpu, &data->cpu_event);
  wake_up_interruptible(&data->read_wait);
 }
 spin_unlock_irq(&data_saved_lock);
 return 0;
}

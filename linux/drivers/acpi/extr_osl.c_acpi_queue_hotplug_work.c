
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int kacpi_hotplug_wq ;
 int queue_work (int ,struct work_struct*) ;

bool acpi_queue_hotplug_work(struct work_struct *work)
{
 return queue_work(kacpi_hotplug_wq, work);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct acpi_table_events_work {int work; scalar_t__ event; void* table; } ;


 scalar_t__ ACPI_TABLE_EVENT_LOAD ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int acpi_scan_initialized ;
 int acpi_table_events_fn ;
 struct acpi_table_events_work* kmalloc (int,int ) ;
 int schedule_work (int *) ;

void acpi_scan_table_handler(u32 event, void *table, void *context)
{
 struct acpi_table_events_work *tew;

 if (!acpi_scan_initialized)
  return;

 if (event != ACPI_TABLE_EVENT_LOAD)
  return;

 tew = kmalloc(sizeof(*tew), GFP_KERNEL);
 if (!tew)
  return;

 INIT_WORK(&tew->work, acpi_table_events_fn);
 tew->table = table;
 tew->event = event;

 schedule_work(&tew->work);
}

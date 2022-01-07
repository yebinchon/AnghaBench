
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {int count; } ;


 size_t ACPI_NUM_FIXED_EVENTS ;
 size_t COUNT_ERROR ;
 TYPE_1__* all_counters ;
 size_t num_gpes ;

__attribute__((used)) static void fixed_event_count(u32 event_number)
{
 if (!all_counters)
  return;

 if (event_number < ACPI_NUM_FIXED_EVENTS)
  all_counters[num_gpes + event_number].count++;
 else
  all_counters[num_gpes + ACPI_NUM_FIXED_EVENTS +
        COUNT_ERROR].count++;

 return;
}

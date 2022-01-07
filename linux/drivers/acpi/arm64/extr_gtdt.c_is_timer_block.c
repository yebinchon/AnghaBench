
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_gtdt_header {scalar_t__ type; } ;


 scalar_t__ ACPI_GTDT_TYPE_TIMER_BLOCK ;

__attribute__((used)) static inline bool is_timer_block(void *platform_timer)
{
 struct acpi_gtdt_header *gh = platform_timer;

 return gh->type == ACPI_GTDT_TYPE_TIMER_BLOCK;
}

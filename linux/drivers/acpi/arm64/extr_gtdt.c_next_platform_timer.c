
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_gtdt_header {int length; } ;
struct TYPE_2__ {void* gtdt_end; } ;


 TYPE_1__ acpi_gtdt_desc ;

__attribute__((used)) static inline void *next_platform_timer(void *platform_timer)
{
 struct acpi_gtdt_header *gh = platform_timer;

 platform_timer += gh->length;
 if (platform_timer < acpi_gtdt_desc.gtdt_end)
  return platform_timer;

 return ((void*)0);
}

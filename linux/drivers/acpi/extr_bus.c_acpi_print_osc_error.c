
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int length; scalar_t__ pointer; } ;
struct acpi_osc_context {TYPE_1__ cap; int uuid_str; } ;
typedef int acpi_handle ;


 int acpi_handle_debug (int ,char*,int ,char*) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static void acpi_print_osc_error(acpi_handle handle,
     struct acpi_osc_context *context, char *error)
{
 int i;

 acpi_handle_debug(handle, "(%s): %s\n", context->uuid_str, error);

 pr_debug("_OSC request data:");
 for (i = 0; i < context->cap.length; i += sizeof(u32))
  pr_debug(" %x", *((u32 *)(context->cap.pointer + i)));

 pr_debug("\n");
}

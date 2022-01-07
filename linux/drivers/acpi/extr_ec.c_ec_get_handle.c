
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * acpi_handle ;
struct TYPE_2__ {int * handle; } ;


 TYPE_1__* first_ec ;

acpi_handle ec_get_handle(void)
{
 if (!first_ec)
  return ((void*)0);
 return first_ec->handle;
}

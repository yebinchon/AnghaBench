
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;


 int remove_resource (struct resource*) ;

__attribute__((used)) static void acpi_nfit_remove_resource(void *data)
{
 struct resource *res = data;

 remove_resource(res);
}

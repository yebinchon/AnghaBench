
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_cache_t ;


 int AE_OK ;
 int kmem_cache_destroy (int *) ;

acpi_status acpi_os_delete_cache(acpi_cache_t * cache)
{
 kmem_cache_destroy(cache);
 return (AE_OK);
}

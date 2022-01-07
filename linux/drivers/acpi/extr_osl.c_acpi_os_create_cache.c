
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int acpi_status ;
typedef int acpi_cache_t ;


 int AE_ERROR ;
 int AE_OK ;
 int * kmem_cache_create (char*,int ,int ,int ,int *) ;

acpi_status
acpi_os_create_cache(char *name, u16 size, u16 depth, acpi_cache_t ** cache)
{
 *cache = kmem_cache_create(name, size, 0, 0, ((void*)0));
 if (*cache == ((void*)0))
  return AE_ERROR;
 else
  return AE_OK;
}

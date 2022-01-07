
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct csr_space {scalar_t__ length; scalar_t__ base; int member_1; int member_0; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int AE_NOT_FOUND ;
 int AE_OK ;
 int METHOD_NAME__CRS ;
 int acpi_walk_resources (int ,int ,int ,struct csr_space*) ;
 int find_csr_space ;

__attribute__((used)) static acpi_status hp_crs_locate(acpi_handle obj, u64 *base, u64 *length)
{
 struct csr_space space = { 0, 0 };

 acpi_walk_resources(obj, METHOD_NAME__CRS, find_csr_space, &space);
 if (!space.length)
  return AE_NOT_FOUND;

 *base = space.base;
 *length = space.length;
 return AE_OK;
}

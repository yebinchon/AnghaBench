
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned long length; } ;
struct acpi_table_madt {TYPE_1__ header; } ;
struct acpi_subtable_header {scalar_t__ type; scalar_t__ length; } ;
typedef int phys_cpuid_t ;


 scalar_t__ ACPI_MADT_TYPE_GENERIC_INTERRUPT ;
 scalar_t__ ACPI_MADT_TYPE_LOCAL_APIC ;
 scalar_t__ ACPI_MADT_TYPE_LOCAL_SAPIC ;
 scalar_t__ ACPI_MADT_TYPE_LOCAL_X2APIC ;
 int PHYS_CPUID_INVALID ;
 int map_gicc_mpidr (struct acpi_subtable_header*,int,int ,int *) ;
 int map_lapic_id (struct acpi_subtable_header*,int ,int *) ;
 int map_lsapic_id (struct acpi_subtable_header*,int,int ,int *) ;
 int map_x2apic_id (struct acpi_subtable_header*,int,int ,int *) ;

__attribute__((used)) static phys_cpuid_t map_madt_entry(struct acpi_table_madt *madt,
       int type, u32 acpi_id)
{
 unsigned long madt_end, entry;
 phys_cpuid_t phys_id = PHYS_CPUID_INVALID;

 if (!madt)
  return phys_id;

 entry = (unsigned long)madt;
 madt_end = entry + madt->header.length;



 entry += sizeof(struct acpi_table_madt);
 while (entry + sizeof(struct acpi_subtable_header) < madt_end) {
  struct acpi_subtable_header *header =
   (struct acpi_subtable_header *)entry;
  if (header->type == ACPI_MADT_TYPE_LOCAL_APIC) {
   if (!map_lapic_id(header, acpi_id, &phys_id))
    break;
  } else if (header->type == ACPI_MADT_TYPE_LOCAL_X2APIC) {
   if (!map_x2apic_id(header, type, acpi_id, &phys_id))
    break;
  } else if (header->type == ACPI_MADT_TYPE_LOCAL_SAPIC) {
   if (!map_lsapic_id(header, type, acpi_id, &phys_id))
    break;
  } else if (header->type == ACPI_MADT_TYPE_GENERIC_INTERRUPT) {
   if (!map_gicc_mpidr(header, type, acpi_id, &phys_id))
    break;
  }
  entry += header->length;
 }
 return phys_id;
}

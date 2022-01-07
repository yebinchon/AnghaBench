
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_header {int revision; } ;
struct acpi_pptt_processor {int flags; int parent; } ;


 int ACPI_PPTT_ACPI_IDENTICAL ;
 struct acpi_pptt_processor* fetch_pptt_node (struct acpi_table_header*,int ) ;

__attribute__((used)) static bool flag_identical(struct acpi_table_header *table_hdr,
      struct acpi_pptt_processor *cpu)
{
 struct acpi_pptt_processor *next;


 if (table_hdr->revision < 2)
  return 0;


 if (cpu->flags & ACPI_PPTT_ACPI_IDENTICAL) {
  next = fetch_pptt_node(table_hdr, cpu->parent);
  if (!(next && next->flags & ACPI_PPTT_ACPI_IDENTICAL))
   return 1;
 }

 return 0;
}

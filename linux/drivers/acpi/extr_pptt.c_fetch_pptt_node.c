
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_table_header {int dummy; } ;
struct acpi_pptt_processor {int dummy; } ;


 scalar_t__ fetch_pptt_subtable (struct acpi_table_header*,int ) ;

__attribute__((used)) static struct acpi_pptt_processor *fetch_pptt_node(struct acpi_table_header *table_hdr,
         u32 pptt_ref)
{
 return (struct acpi_pptt_processor *)fetch_pptt_subtable(table_hdr, pptt_ref);
}

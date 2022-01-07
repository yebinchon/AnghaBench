
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_header {int dummy; } ;
struct acpi_pptt_processor {int flags; int parent; } ;


 int ACPI_PPTT_ACPI_IDENTICAL ;
 struct acpi_pptt_processor* fetch_pptt_node (struct acpi_table_header*,int ) ;
 scalar_t__ flag_identical (struct acpi_table_header*,struct acpi_pptt_processor*) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static struct acpi_pptt_processor *acpi_find_processor_tag(struct acpi_table_header *table_hdr,
          struct acpi_pptt_processor *cpu,
          int level, int flag)
{
 struct acpi_pptt_processor *prev_node;

 while (cpu && level) {

  if (flag == ACPI_PPTT_ACPI_IDENTICAL) {
   if (flag_identical(table_hdr, cpu))
    break;
  } else if (cpu->flags & flag)
   break;
  pr_debug("level %d\n", level);
  prev_node = fetch_pptt_node(table_hdr, cpu->parent);
  if (prev_node == ((void*)0))
   break;
  cpu = prev_node;
  level--;
 }
 return cpu;
}

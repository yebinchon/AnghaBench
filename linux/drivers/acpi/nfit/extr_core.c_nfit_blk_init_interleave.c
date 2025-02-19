
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nfit_blk_mmio {int num_lines; int line_size; int table_size; } ;
struct acpi_nfit_interleave {int line_count; int line_size; } ;


 int ENXIO ;

__attribute__((used)) static int nfit_blk_init_interleave(struct nfit_blk_mmio *mmio,
  struct acpi_nfit_interleave *idt, u16 interleave_ways)
{
 if (idt) {
  mmio->num_lines = idt->line_count;
  mmio->line_size = idt->line_size;
  if (interleave_ways == 0)
   return -ENXIO;
  mmio->table_size = mmio->num_lines * interleave_ways
   * mmio->line_size;
 }

 return 0;
}

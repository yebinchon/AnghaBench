
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int length; } ;
struct acpi_nfit_interleave {int line_count; TYPE_1__ header; } ;



__attribute__((used)) static size_t sizeof_idt(struct acpi_nfit_interleave *idt)
{
 if (idt->header.length < sizeof(*idt))
  return 0;
 return sizeof(*idt) + sizeof(u32) * (idt->line_count - 1);
}

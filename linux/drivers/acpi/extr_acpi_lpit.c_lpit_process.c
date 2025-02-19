
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_9__ {scalar_t__ length; int flags; int type; } ;
struct TYPE_7__ {scalar_t__ space_id; } ;
struct acpi_lpit_native {TYPE_3__ header; TYPE_1__ residency_counter; } ;
struct TYPE_8__ {int address; } ;
struct TYPE_10__ {TYPE_2__ gaddr; } ;


 scalar_t__ ACPI_ADR_SPACE_FIXED_HARDWARE ;
 scalar_t__ ACPI_ADR_SPACE_SYSTEM_MEMORY ;
 int lpit_update_residency (TYPE_4__*,struct acpi_lpit_native*) ;
 TYPE_4__ residency_info_ffh ;
 TYPE_4__ residency_info_mem ;

__attribute__((used)) static void lpit_process(u64 begin, u64 end)
{
 while (begin + sizeof(struct acpi_lpit_native) <= end) {
  struct acpi_lpit_native *lpit_native = (struct acpi_lpit_native *)begin;

  if (!lpit_native->header.type && !lpit_native->header.flags) {
   if (lpit_native->residency_counter.space_id == ACPI_ADR_SPACE_SYSTEM_MEMORY &&
       !residency_info_mem.gaddr.address) {
    lpit_update_residency(&residency_info_mem, lpit_native);
   } else if (lpit_native->residency_counter.space_id == ACPI_ADR_SPACE_FIXED_HARDWARE &&
       !residency_info_ffh.gaddr.address) {
    lpit_update_residency(&residency_info_ffh, lpit_native);
   }
  }
  begin += lpit_native->header.length;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_lpi_state {scalar_t__ entry_method; char* desc; int index; int arch_flags; int flags; int enable_parent_state; scalar_t__ wake_latency; int min_residency; scalar_t__ address; } ;


 scalar_t__ ACPI_CSTATE_INTEGER ;
 int ACPI_CX_DESC_LEN ;
 int max (int ,int ) ;
 int strlcat (char*,char*,int ) ;
 int strlcpy (char*,char*,int ) ;

__attribute__((used)) static bool combine_lpi_states(struct acpi_lpi_state *local,
          struct acpi_lpi_state *parent,
          struct acpi_lpi_state *result)
{
 if (parent->entry_method == ACPI_CSTATE_INTEGER) {
  if (!parent->address)
   return 0;
  result->address = local->address + parent->address;
 } else {
  result->address = parent->address;
 }

 result->min_residency = max(local->min_residency, parent->min_residency);
 result->wake_latency = local->wake_latency + parent->wake_latency;
 result->enable_parent_state = parent->enable_parent_state;
 result->entry_method = local->entry_method;

 result->flags = parent->flags;
 result->arch_flags = parent->arch_flags;
 result->index = parent->index;

 strlcpy(result->desc, local->desc, ACPI_CX_DESC_LEN);
 strlcat(result->desc, "+", ACPI_CX_DESC_LEN);
 strlcat(result->desc, parent->desc, ACPI_CX_DESC_LEN);
 return 1;
}

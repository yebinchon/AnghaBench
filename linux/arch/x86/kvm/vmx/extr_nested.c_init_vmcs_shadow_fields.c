
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct shadow_vmcs_field {int encoding; int offset; } ;


 int GUEST_ES_AR_BYTES ;


 int GUEST_TR_AR_BYTES ;
 int PAGE_SIZE ;
 scalar_t__ VMCS_FIELD_WIDTH_U64 ;

 int WARN_ONCE (int,char*) ;
 int clear_bit (int,int ) ;
 int cpu_has_vmx_apicv () ;
 int cpu_has_vmx_pml () ;
 int cpu_has_vmx_preemption_timer () ;
 int max_shadow_read_only_fields ;
 int max_shadow_read_write_fields ;
 int memset (int ,int,int ) ;
 int pr_err (char*,int) ;
 struct shadow_vmcs_field* shadow_read_only_fields ;
 struct shadow_vmcs_field* shadow_read_write_fields ;
 scalar_t__ vmcs_field_width (int) ;
 int vmx_vmread_bitmap ;
 int vmx_vmwrite_bitmap ;

__attribute__((used)) static void init_vmcs_shadow_fields(void)
{
 int i, j;

 memset(vmx_vmread_bitmap, 0xff, PAGE_SIZE);
 memset(vmx_vmwrite_bitmap, 0xff, PAGE_SIZE);

 for (i = j = 0; i < max_shadow_read_only_fields; i++) {
  struct shadow_vmcs_field entry = shadow_read_only_fields[i];
  u16 field = entry.encoding;

  if (vmcs_field_width(field) == VMCS_FIELD_WIDTH_U64 &&
      (i + 1 == max_shadow_read_only_fields ||
       shadow_read_only_fields[i + 1].encoding != field + 1))
   pr_err("Missing field from shadow_read_only_field %x\n",
          field + 1);

  clear_bit(field, vmx_vmread_bitmap);
  if (field & 1)



   entry.offset += sizeof(u32);

  shadow_read_only_fields[j++] = entry;
 }
 max_shadow_read_only_fields = j;

 for (i = j = 0; i < max_shadow_read_write_fields; i++) {
  struct shadow_vmcs_field entry = shadow_read_write_fields[i];
  u16 field = entry.encoding;

  if (vmcs_field_width(field) == VMCS_FIELD_WIDTH_U64 &&
      (i + 1 == max_shadow_read_write_fields ||
       shadow_read_write_fields[i + 1].encoding != field + 1))
   pr_err("Missing field from shadow_read_write_field %x\n",
          field + 1);

  WARN_ONCE(field >= GUEST_ES_AR_BYTES &&
     field <= GUEST_TR_AR_BYTES,
     "Update vmcs12_write_any() to drop reserved bits from AR_BYTES");






  switch (field) {
  case 129:
   if (!cpu_has_vmx_pml())
    continue;
   break;
  case 128:
   if (!cpu_has_vmx_preemption_timer())
    continue;
   break;
  case 130:
   if (!cpu_has_vmx_apicv())
    continue;
   break;
  default:
   break;
  }

  clear_bit(field, vmx_vmwrite_bitmap);
  clear_bit(field, vmx_vmread_bitmap);
  if (field & 1)



   entry.offset += sizeof(u32);

  shadow_read_write_fields[j++] = entry;
 }
 max_shadow_read_write_fields = j;
}

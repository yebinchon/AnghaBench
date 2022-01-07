
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
typedef void* u32 ;
typedef int u16 ;
struct vmcs12 {int dummy; } ;
typedef void* natural_width ;






 int WARN_ON_ONCE (int) ;
 int vmcs_field_width (unsigned long) ;

__attribute__((used)) static inline void vmcs12_write_any(struct vmcs12 *vmcs12, unsigned long field,
        u16 offset, u64 field_value)
{
 char *p = (char *)vmcs12 + offset;

 switch (vmcs_field_width(field)) {
 case 130:
  *(u16 *)p = field_value;
  break;
 case 129:
  *(u32 *)p = field_value;
  break;
 case 128:
  *(u64 *)p = field_value;
  break;
 case 131:
  *(natural_width *)p = field_value;
  break;
 default:
  WARN_ON_ONCE(1);
  break;
 }
}

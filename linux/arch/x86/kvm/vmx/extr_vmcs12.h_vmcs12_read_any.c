
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct vmcs12 {int dummy; } ;
typedef int natural_width ;






 int WARN_ON_ONCE (int) ;
 int vmcs_field_width (unsigned long) ;

__attribute__((used)) static inline u64 vmcs12_read_any(struct vmcs12 *vmcs12, unsigned long field,
      u16 offset)
{
 char *p = (char *)vmcs12 + offset;

 switch (vmcs_field_width(field)) {
 case 131:
  return *((natural_width *)p);
 case 130:
  return *((u16 *)p);
 case 129:
  return *((u32 *)p);
 case 128:
  return *((u64 *)p);
 default:
  WARN_ON_ONCE(1);
  return -1;
 }
}

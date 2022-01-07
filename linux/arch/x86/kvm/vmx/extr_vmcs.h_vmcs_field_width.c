
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VMCS_FIELD_WIDTH_U32 ;

__attribute__((used)) static inline int vmcs_field_width(unsigned long field)
{
 if (0x1 & field)
  return VMCS_FIELD_WIDTH_U32;
 return (field >> 13) & 0x3;
}

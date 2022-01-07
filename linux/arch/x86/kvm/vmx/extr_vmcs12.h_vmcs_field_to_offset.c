
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 short ENOENT ;
 unsigned int ROL16 (unsigned long,int) ;
 unsigned int array_index_nospec (unsigned int,unsigned int) ;
 unsigned int nr_vmcs12_fields ;
 unsigned short* vmcs_field_to_offset_table ;

__attribute__((used)) static inline short vmcs_field_to_offset(unsigned long field)
{
 unsigned short offset;
 unsigned int index;

 if (field >> 15)
  return -ENOENT;

 index = ROL16(field, 6);
 if (index >= nr_vmcs12_fields)
  return -ENOENT;

 index = array_index_nospec(index, nr_vmcs12_fields);
 offset = vmcs_field_to_offset_table[index];
 if (offset == 0)
  return -ENOENT;
 return offset;
}

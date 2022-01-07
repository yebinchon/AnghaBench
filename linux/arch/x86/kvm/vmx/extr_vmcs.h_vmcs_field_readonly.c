
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int vmcs_field_readonly(unsigned long field)
{
 return (((field >> 10) & 0x3) == 1);
}

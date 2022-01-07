
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;


 int ACPI_FUNCTION_ENTRY () ;
 int acpi_gbl_integer_bit_width ;

u64 acpi_ex_do_math_op(u16 opcode, u64 integer0, u64 integer1)
{

 ACPI_FUNCTION_ENTRY();

 switch (opcode) {
 case 137:

  return (integer0 + integer1);

 case 136:

  return (integer0 & integer1);

 case 135:

  return (~(integer0 & integer1));

 case 133:

  return (integer0 | integer1);

 case 134:

  return (~(integer0 | integer1));

 case 132:

  return (integer0 ^ integer1);

 case 131:

  return (integer0 * integer1);

 case 130:





  if (integer1 >= acpi_gbl_integer_bit_width) {
   return (0);
  }
  return (integer0 << integer1);

 case 129:





  if (integer1 >= acpi_gbl_integer_bit_width) {
   return (0);
  }
  return (integer0 >> integer1);

 case 128:

  return (integer0 - integer1);

 default:

  return (0);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_AML_INTERNAL ;
 int AE_INFO ;
 int AE_OK ;


 int FALSE ;
 int TRUE ;
 int ex_do_logical_numeric_op ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_do_logical_numeric_op(u16 opcode,
         u64 integer0, u64 integer1, u8 *logical_result)
{
 acpi_status status = AE_OK;
 u8 local_result = FALSE;

 ACPI_FUNCTION_TRACE(ex_do_logical_numeric_op);

 switch (opcode) {
 case 129:

  if (integer0 && integer1) {
   local_result = TRUE;
  }
  break;

 case 128:

  if (integer0 || integer1) {
   local_result = TRUE;
  }
  break;

 default:

  ACPI_ERROR((AE_INFO,
       "Invalid numeric logical opcode: %X", opcode));
  status = AE_AML_INTERNAL;
  break;
 }



 *logical_result = local_result;
 return_ACPI_STATUS(status);
}

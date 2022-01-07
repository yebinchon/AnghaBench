
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ lo; scalar_t__ hi; } ;
union uint64_overlay {int full; TYPE_1__ part; } ;
typedef int u64 ;
typedef int u32 ;
typedef int acpi_status ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_SHIFT_LEFT_64_BY_32 (scalar_t__,scalar_t__,int) ;
 int AE_OK ;
 int return_ACPI_STATUS (int ) ;
 int ut_short_shift_left ;

acpi_status acpi_ut_short_shift_left(u64 operand, u32 count, u64 *out_result)
{
 union uint64_overlay operand_ovl;

 ACPI_FUNCTION_TRACE(ut_short_shift_left);

 operand_ovl.full = operand;

 if ((count & 63) >= 32) {
  operand_ovl.part.hi = operand_ovl.part.lo;
  operand_ovl.part.lo = 0;
  count = (count & 63) - 32;
 }
 ACPI_SHIFT_LEFT_64_BY_32(operand_ovl.part.hi,
     operand_ovl.part.lo, count);



 if (out_result) {
  *out_result = operand_ovl.full;
 }

 return_ACPI_STATUS(AE_OK);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hi; int lo; } ;
union uint64_overlay {int full; TYPE_1__ part; } ;
typedef int u64 ;
typedef scalar_t__ u32 ;
typedef int acpi_status ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MUL_64_BY_32 (int ,int ,scalar_t__,int ,scalar_t__) ;
 int AE_OK ;
 int return_ACPI_STATUS (int ) ;
 int ut_short_multiply ;

acpi_status
acpi_ut_short_multiply(u64 multiplicand, u32 multiplier, u64 *out_product)
{
 union uint64_overlay multiplicand_ovl;
 union uint64_overlay product;
 u32 carry32;

 ACPI_FUNCTION_TRACE(ut_short_multiply);

 multiplicand_ovl.full = multiplicand;





 ACPI_MUL_64_BY_32(0, multiplicand_ovl.part.hi, multiplier,
     product.part.hi, carry32);

 ACPI_MUL_64_BY_32(0, multiplicand_ovl.part.lo, multiplier,
     product.part.lo, carry32);

 product.part.hi += carry32;



 if (out_product) {
  *out_product = product.full;
 }

 return_ACPI_STATUS(AE_OK);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int addr; int val; } ;
struct intel_pmic_opregion {TYPE_1__ ctx; int regmap; } ;
typedef int acpi_status ;
typedef int acpi_physical_address ;


 int AE_BAD_PARAMETER ;
 int AE_ERROR ;
 int AE_OK ;
 int EINVAL ;
 int memset (TYPE_1__*,int,int) ;
 int regmap_read (int ,int,int*) ;
 int regmap_write (int ,int,int) ;

__attribute__((used)) static acpi_status intel_pmic_regs_handler(u32 function,
  acpi_physical_address address, u32 bits, u64 *value64,
  void *handler_context, void *region_context)
{
 struct intel_pmic_opregion *opregion = region_context;
 int result = 0;

 switch (address) {
 case 0:
  return AE_OK;
 case 1:
  opregion->ctx.addr |= (*value64 & 0xff) << 8;
  return AE_OK;
 case 2:
  opregion->ctx.addr |= *value64 & 0xff;
  return AE_OK;
 case 3:
  opregion->ctx.val = *value64 & 0xff;
  return AE_OK;
 case 4:
  if (*value64) {
   result = regmap_write(opregion->regmap, opregion->ctx.addr,
           opregion->ctx.val);
  } else {
   result = regmap_read(opregion->regmap, opregion->ctx.addr,
          &opregion->ctx.val);
   if (result == 0)
    *value64 = opregion->ctx.val;
  }
  memset(&opregion->ctx, 0x00, sizeof(opregion->ctx));
 }

 if (result < 0) {
  if (result == -EINVAL)
   return AE_BAD_PARAMETER;
  else
   return AE_ERROR;
 }

 return AE_OK;
}

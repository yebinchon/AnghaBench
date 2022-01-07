
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int REG_SMPS_OFFSET ;
 int TWL6030_MODULE_ID0 ;
 int is_offset_valid ;
 int smps_offset ;
 int twl_i2c_read_u8 (int ,int*,int ) ;

__attribute__((used)) static unsigned long twl6030_vsel_to_uv(const u8 vsel)
{
 if (!is_offset_valid) {
  twl_i2c_read_u8(TWL6030_MODULE_ID0, &smps_offset,
    REG_SMPS_OFFSET);
  is_offset_valid = 1;
 }

 if (!vsel)
  return 0;







 if (vsel == 0x3A)
  return 1350000;

 if (smps_offset & 0x8)
  return ((((vsel - 1) * 1266) + 70900)) * 10;
 else
  return ((((vsel - 1) * 1266) + 60770)) * 10;
}

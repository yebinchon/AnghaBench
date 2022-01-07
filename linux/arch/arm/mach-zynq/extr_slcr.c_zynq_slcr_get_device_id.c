
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SLCR_PSS_IDCODE ;
 int SLCR_PSS_IDCODE_DEVICE_MASK ;
 int SLCR_PSS_IDCODE_DEVICE_SHIFT ;
 int zynq_slcr_read (int*,int ) ;

u32 zynq_slcr_get_device_id(void)
{
 u32 val;

 zynq_slcr_read(&val, SLCR_PSS_IDCODE);
 val >>= SLCR_PSS_IDCODE_DEVICE_SHIFT;
 val &= SLCR_PSS_IDCODE_DEVICE_MASK;

 return val;
}

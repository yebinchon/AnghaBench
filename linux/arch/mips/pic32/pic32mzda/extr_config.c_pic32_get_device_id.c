
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PIC32_DEVID ;
 int pic32_conf_get_reg_field (int ,int ,int) ;

__attribute__((used)) static u32 pic32_get_device_id(void)
{
 return pic32_conf_get_reg_field(PIC32_DEVID, 0, 0x0fffffff);
}

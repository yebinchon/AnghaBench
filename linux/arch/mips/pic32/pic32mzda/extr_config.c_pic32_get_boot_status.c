
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int pic32_reset_status ;

u32 pic32_get_boot_status(void)
{
 return pic32_reset_status;
}

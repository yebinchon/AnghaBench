
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DIV_ROUND_UP (unsigned long,int) ;

__attribute__((used)) static u8 twl4030_uv_to_vsel(unsigned long uv)
{
 return DIV_ROUND_UP(uv - 600000, 12500);
}

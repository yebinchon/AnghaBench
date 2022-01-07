
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int ifx_danube_pre_1_4 ;

u32 input_swap(u32 input)
{
    if (!ifx_danube_pre_1_4) {
        u8 *ptr = (u8 *)&input;
        return ((ptr[3] << 24) | (ptr[2] << 16) | (ptr[1] << 8) | ptr[0]);
    }
    else
        return input;
}

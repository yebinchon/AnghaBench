
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int __flip_bit (int ,int ,int) ;

int msr_set_bit(u32 msr, u8 bit)
{
 return __flip_bit(msr, bit, 1);
}

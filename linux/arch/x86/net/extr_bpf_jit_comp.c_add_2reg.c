
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef size_t u32 ;


 int* reg2hex ;

__attribute__((used)) static u8 add_2reg(u8 byte, u32 dst_reg, u32 src_reg)
{
 return byte + reg2hex[dst_reg] + (reg2hex[src_reg] << 3);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static u8 add_2reg(u8 byte, u32 dst_reg, u32 src_reg)
{
 return byte + dst_reg + (src_reg << 3);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;



__attribute__((used)) static u8 add_1reg(u8 byte, u32 dst_reg)
{
 return byte + dst_reg;
}

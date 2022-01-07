
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int BIT (int) ;

__attribute__((used)) static u32 get_bit(u8 idx)
{
 return BIT(idx % 32);
}

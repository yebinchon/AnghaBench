
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;


 size_t* sbox ;

__attribute__((used)) static u32 sm4_t_non_lin_sub(u32 x)
{
 int i;
 u8 *b = (u8 *)&x;

 for (i = 0; i < 4; ++i)
  b[i] = sbox[b[i]];

 return x;
}

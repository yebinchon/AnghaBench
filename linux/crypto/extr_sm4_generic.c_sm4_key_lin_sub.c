
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int rol32 (int,int) ;

__attribute__((used)) static u32 sm4_key_lin_sub(u32 x)
{
 return x ^ rol32(x, 13) ^ rol32(x, 23);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int sm4_key_lin_sub (int ) ;
 int sm4_t_non_lin_sub (int ) ;

__attribute__((used)) static u32 sm4_key_sub(u32 x)
{
 return sm4_key_lin_sub(sm4_t_non_lin_sub(x));
}

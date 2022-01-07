
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int _rotl (int const,int const) ;

u32 rotl32 (const u32 a, const int n)
{



  return ((a << n) | (a >> (32 - n)));

}

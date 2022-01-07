
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int _rotr64 (int const,int const) ;

u64 rotr64 (const u64 a, const int n)
{



  return ((a >> n) | (a << (64 - n)));

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;
typedef int bits64 ;


 int LIT64 (int) ;

bits64 extractFloat64Frac(float64 a)
{
 return a & LIT64(0x000FFFFFFFFFFFFF);
}

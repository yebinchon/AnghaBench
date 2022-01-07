
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;
typedef int float64 ;



int16 extractFloat64Exp(float64 a)
{
 return (a >> 52) & 0x7FF;
}

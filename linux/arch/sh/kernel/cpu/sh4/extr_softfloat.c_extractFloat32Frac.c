
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float32 ;
typedef int bits32 ;



bits32 extractFloat32Frac(float32 a)
{
 return a & 0x007FFFFF;
}

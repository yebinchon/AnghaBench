
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;
typedef int float32 ;



int16 extractFloat32Exp(float32 a)
{
 return (a >> 23) & 0xFF;
}

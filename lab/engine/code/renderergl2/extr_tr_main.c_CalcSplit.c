
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float pow (float,float) ;

__attribute__((used)) static float CalcSplit(float n, float f, float i, float m)
{
 return (n * pow(f / n, i / m) + (f - n) * i / m) / 2.0f;
}

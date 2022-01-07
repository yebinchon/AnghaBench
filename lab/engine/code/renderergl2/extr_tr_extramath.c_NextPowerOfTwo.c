
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int NextPowerOfTwo(int in)
{
 int out;

 for (out = 1; out < in; out <<= 1)
  ;

 return out;
}

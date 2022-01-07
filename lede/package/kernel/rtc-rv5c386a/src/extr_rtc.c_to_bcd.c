
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int to_bcd(int decnum)
{
 int fac, num = 0;

 for (fac = 1; decnum; fac *= 16) {
  num += (decnum % 10) * fac;
  decnum /= 10;
 }

 return num;
}

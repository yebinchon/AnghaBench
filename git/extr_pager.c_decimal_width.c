
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;



int decimal_width(uintmax_t number)
{
 int width;

 for (width = 1; number >= 10; width++)
  number /= 10;
 return width;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int digits_in_number(unsigned int number)
{
 unsigned int i = 10, result = 1;
 while (i <= number) {
  i *= 10;
  result++;
 }
 return result;
}

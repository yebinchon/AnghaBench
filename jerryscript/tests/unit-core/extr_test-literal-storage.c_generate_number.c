
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double ecma_number_t ;


 int rand () ;

__attribute__((used)) static ecma_number_t
generate_number (void)
{
  ecma_number_t num = ((ecma_number_t) rand () / 32767.0);
  if (rand () % 2)
  {
    num = -num;
  }
  int power = rand () % 30;
  while (power-- > 0)
  {
    num *= 10;
  }
  return num;
}

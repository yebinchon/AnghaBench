
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static void u16_to_decimal(char *str, u16 val)
{
 int div = 1;

 while (div * 10 <= val)
  div *= 10;
 while (div) {
  *str++ = '0' + val / div;
  val %= div;
  div /= 10;
 }
 *str = '\0';
}

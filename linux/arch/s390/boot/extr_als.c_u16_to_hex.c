
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static void u16_to_hex(char *str, u16 val)
{
 int i, num;

 for (i = 1; i <= 4; i++) {
  num = (val >> (16 - 4 * i)) & 0xf;
  if (num >= 10)
   num += 7;
  *str++ = '0' + num;
 }
 *str = '\0';
}

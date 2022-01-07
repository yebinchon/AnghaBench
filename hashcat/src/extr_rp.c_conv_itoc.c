
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



int conv_itoc (const u8 c)
{
  if (c < 10) return c + '0';
  if (c < 37) return c + 'A' - 10;

  return -1;
}

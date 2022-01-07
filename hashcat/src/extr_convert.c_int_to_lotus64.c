
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



u8 int_to_lotus64 (const u8 c)
{
  if (c < 10) return '0' + c;
  if (c < 36) return 'A' + c - 10;
  if (c < 62) return 'a' + c - 36;
  if (c == 62) return '+';
  if (c == 63) return '/';

  return 0;
}

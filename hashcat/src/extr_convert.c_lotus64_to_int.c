
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;



u8 lotus64_to_int (const u8 c)
{
  if ((c >= '0') && (c <= '9')) return c - '0';
  if ((c >= 'A') && (c <= 'Z')) return c - 'A' + 10;
  if ((c >= 'a') && (c <= 'z')) return c - 'a' + 36;
  if (c == '+') return 62;
  if (c == '/') return 63;

  return 0;
}

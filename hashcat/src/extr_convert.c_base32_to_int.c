
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;



u8 base32_to_int (const u8 c)
{
  if ((c >= 'A') && (c <= 'Z')) return c - 'A';
  if ((c >= '2') && (c <= '7')) return c - '2' + 26;

  return 0;
}

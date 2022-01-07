
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;



bool is_valid_float_char (const u8 c)
{
  if ((c >= '0') && (c <= '9')) return 1;

  if (c == '.') return 1;

  return 0;
}

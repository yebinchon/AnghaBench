
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int is_valid_base64c_char (int const) ;

bool is_valid_base64c_string (const u8 *s, const size_t len)
{
  for (size_t i = 0; i < len; i++)
  {
    const u8 c = s[i];

    if (is_valid_base64c_char (c) == 0) return 0;
  }

  return 1;
}

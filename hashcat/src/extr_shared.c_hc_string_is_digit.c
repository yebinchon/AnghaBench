
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (int const) ;
 size_t strlen (char const*) ;

bool hc_string_is_digit (const char *s)
{
  if (s == ((void*)0)) return 0;

  const size_t len = strlen (s);

  if (len == 0) return 0;

  for (size_t i = 0; i < len; i++)
  {
    const int c = (const int) s[i];

    if (isdigit (c) == 0) return 0;
  }

  return 1;
}

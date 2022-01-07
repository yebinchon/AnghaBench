
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static bool matches_separator (const u8 *buf, const size_t len, const char separator)
{
  for (size_t i = 0; i < len; i++)
  {
    const char c = (char) buf[i];

    if (c == separator) return 1;
  }

  return 0;
}

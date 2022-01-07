
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ is_hexify (int const*,size_t const) ;
 int matches_separator (int const*,size_t const,char const) ;
 int printable_ascii (int const*,size_t const) ;
 int printable_utf8 (int const*,size_t const) ;

bool need_hexify (const u8 *buf, const size_t len, const char separator, bool always_ascii)
{
  bool rc = 0;

  if (always_ascii == 1)
  {
    if (printable_ascii (buf, len) == 0)
    {
      rc = 1;
    }
  }
  else
  {
    if (printable_utf8 (buf, len) == 0)
    {
      rc = 1;
    }
  }

  if (rc == 0)
  {
    if (matches_separator (buf, len, separator) == 1)
    {
      rc = 1;
    }
  }



  if (rc == 0)
  {
    if (is_hexify (buf, len))
    {
      rc = 1;
    }
  }

  return rc;
}

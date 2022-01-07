
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char const) ;

size_t display_mode_esc_sequence_len(const char *s)
{
 const char *p = s;
 if (*p++ != '\033')
  return 0;
 if (*p++ != '[')
  return 0;
 while (isdigit(*p) || *p == ';')
  p++;
 if (*p++ != 'm')
  return 0;
 return p - s;
}

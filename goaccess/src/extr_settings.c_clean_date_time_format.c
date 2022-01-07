
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* xstrdup (char const*) ;

__attribute__((used)) static char *
clean_date_time_format (const char *format)
{
  char *fmt = ((void*)0), *pr = ((void*)0), *pw = ((void*)0);
  int special = 0;

  if (format == ((void*)0) || *format == '\0')
    return ((void*)0);

  fmt = xstrdup (format);
  pr = fmt;
  pw = fmt;
  while (*pr) {
    *pw = *pr++;
    if (*pw == '%' || special) {
      special = !special;
      pw++;
    }
  }
  *pw = '\0';

  return fmt;
}

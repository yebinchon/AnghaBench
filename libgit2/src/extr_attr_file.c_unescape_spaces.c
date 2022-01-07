
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git__isspace (char) ;

__attribute__((used)) static size_t unescape_spaces(char *str)
{
 char *scan, *pos = str;
 bool escaped = 0;

 if (!str)
  return 0;

 for (scan = str; *scan; scan++) {
  if (!escaped && *scan == '\\') {
   escaped = 1;
   continue;
  }


  if (escaped && !git__isspace(*scan))
   *pos++ = '\\';

  *pos++ = *scan;
  escaped = 0;
 }

 if (pos != scan)
  *pos = '\0';

 return (pos - str);
}

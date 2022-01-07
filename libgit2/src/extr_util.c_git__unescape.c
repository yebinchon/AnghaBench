
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t git__unescape(char *str)
{
 char *scan, *pos = str;

 if (!str)
  return 0;

 for (scan = str; *scan; pos++, scan++) {
  if (*scan == '\\' && *(scan + 1) != '\0')
   scan++;
  if (pos != scan)
   *pos = *scan;
 }

 if (pos != scan) {
  *pos = '\0';
 }

 return (pos - str);
}

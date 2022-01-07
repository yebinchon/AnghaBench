
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ git__isdigit (char const) ;

__attribute__((used)) static int git_xdiff_scan_int(const char **str, int *value)
{
 const char *scan = *str;
 int v = 0, digits = 0;

 for (scan = *str; *scan && !git__isdigit(*scan); scan++);

 for (; git__isdigit(*scan); scan++, digits++)
  v = (v * 10) + (*scan - '0');
 *str = scan;
 *value = v;
 return (digits > 0) ? 0 : -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 scalar_t__ git__isspace (char const) ;
 int git_buf_put (int *,char const*,int) ;
 int git_buf_putc (int *,char) ;

__attribute__((used)) static int filter_def_scan_attrs(
 git_buf *attrs, size_t *nattr, size_t *nmatch, const char *attr_str)
{
 const char *start, *scan = attr_str;
 int has_eq;

 *nattr = *nmatch = 0;

 if (!scan)
  return 0;

 while (*scan) {
  while (git__isspace(*scan)) scan++;

  for (start = scan, has_eq = 0; *scan && !git__isspace(*scan); ++scan) {
   if (*scan == '=')
    has_eq = 1;
  }

  if (scan > start) {
   (*nattr)++;
   if (has_eq || *start == '-' || *start == '+' || *start == '!')
    (*nmatch)++;

   if (has_eq)
    git_buf_putc(attrs, '=');
   git_buf_put(attrs, start, scan - start);
   git_buf_putc(attrs, '\0');
  }
 }

 return 0;
}

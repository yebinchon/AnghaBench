
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EINVALIDSPEC ;
 scalar_t__ git__tolower (char) ;
 scalar_t__ isalnum (char) ;

__attribute__((used)) static int normalize_section(char *start, char *end)
{
 char *scan;

 if (start == end)
  return GIT_EINVALIDSPEC;


 for (scan = start; *scan; ++scan) {
  if (end && scan >= end)
   break;
  if (isalnum(*scan))
   *scan = (char)git__tolower(*scan);
  else if (*scan != '-' || scan == start)
   return GIT_EINVALIDSPEC;
 }

 if (scan == start)
  return GIT_EINVALIDSPEC;

 return 0;
}

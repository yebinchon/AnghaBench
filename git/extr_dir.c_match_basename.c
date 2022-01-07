
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PATTERN_FLAG_ENDSWITH ;
 scalar_t__ fnmatch_icase_mem (char const*,int,char const*,int,int ) ;
 int fspathncmp (char const*,char const*,int) ;

int match_basename(const char *basename, int basenamelen,
     const char *pattern, int prefix, int patternlen,
     unsigned flags)
{
 if (prefix == patternlen) {
  if (patternlen == basenamelen &&
      !fspathncmp(pattern, basename, basenamelen))
   return 1;
 } else if (flags & PATTERN_FLAG_ENDSWITH) {

  if (patternlen - 1 <= basenamelen &&
      !fspathncmp(pattern + 1,
       basename + basenamelen - (patternlen - 1),
       patternlen - 1))
   return 1;
 } else {
  if (fnmatch_icase_mem(pattern, patternlen,
          basename, basenamelen,
          0) == 0)
   return 1;
 }
 return 0;
}

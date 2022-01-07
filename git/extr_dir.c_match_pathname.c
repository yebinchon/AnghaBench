
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WM_PATHNAME ;
 scalar_t__ fnmatch_icase_mem (char const*,int,char const*,int,int ) ;
 scalar_t__ fspathncmp (char const*,char const*,int) ;

int match_pathname(const char *pathname, int pathlen,
     const char *base, int baselen,
     const char *pattern, int prefix, int patternlen,
     unsigned flags)
{
 const char *name;
 int namelen;





 if (*pattern == '/') {
  pattern++;
  patternlen--;
  prefix--;
 }





 if (pathlen < baselen + 1 ||
     (baselen && pathname[baselen] != '/') ||
     fspathncmp(pathname, base, baselen))
  return 0;

 namelen = baselen ? pathlen - baselen - 1 : pathlen;
 name = pathname + pathlen - namelen;

 if (prefix) {




  if (prefix > namelen)
   return 0;

  if (fspathncmp(pattern, name, prefix))
   return 0;
  pattern += prefix;
  patternlen -= prefix;
  name += prefix;
  namelen -= prefix;






  if (!patternlen && !namelen)
   return 1;
 }

 return fnmatch_icase_mem(pattern, patternlen,
     name, namelen,
     WM_PATHNAME) == 0;
}

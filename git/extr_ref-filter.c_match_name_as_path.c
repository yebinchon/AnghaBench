
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_filter {char** name_patterns; scalar_t__ ignore_case; } ;


 unsigned int WM_CASEFOLD ;
 unsigned int WM_PATHNAME ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;
 int wildmatch (char const*,char const*,unsigned int) ;

__attribute__((used)) static int match_name_as_path(const struct ref_filter *filter, const char *refname)
{
 const char **pattern = filter->name_patterns;
 int namelen = strlen(refname);
 unsigned flags = WM_PATHNAME;

 if (filter->ignore_case)
  flags |= WM_CASEFOLD;

 for (; *pattern; pattern++) {
  const char *p = *pattern;
  int plen = strlen(p);

  if ((plen <= namelen) &&
      !strncmp(refname, p, plen) &&
      (refname[plen] == '\0' ||
       refname[plen] == '/' ||
       p[plen-1] == '/'))
   return 1;
  if (!wildmatch(p, refname, flags))
   return 1;
 }
 return 0;
}

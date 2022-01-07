
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_filter {char** name_patterns; scalar_t__ ignore_case; } ;


 unsigned int WM_CASEFOLD ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int wildmatch (char const*,char const*,unsigned int) ;

__attribute__((used)) static int match_pattern(const struct ref_filter *filter, const char *refname)
{
 const char **patterns = filter->name_patterns;
 unsigned flags = 0;

 if (filter->ignore_case)
  flags |= WM_CASEFOLD;





 (void)(skip_prefix(refname, "refs/tags/", &refname) ||
        skip_prefix(refname, "refs/heads/", &refname) ||
        skip_prefix(refname, "refs/remotes/", &refname) ||
        skip_prefix(refname, "refs/", &refname));

 for (; *patterns; patterns++) {
  if (!wildmatch(*patterns, refname, flags))
   return 1;
 }
 return 0;
}

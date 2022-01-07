
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_filter {scalar_t__ match_as_path; int * name_patterns; } ;


 int match_name_as_path (struct ref_filter*,char const*) ;
 int match_pattern (struct ref_filter*,char const*) ;

__attribute__((used)) static int filter_pattern_match(struct ref_filter *filter, const char *refname)
{
 if (!*filter->name_patterns)
  return 1;
 if (filter->match_as_path)
  return match_name_as_path(filter, refname);
 return match_pattern(filter, refname);
}

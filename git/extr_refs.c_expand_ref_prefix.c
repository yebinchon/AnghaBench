
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {int dummy; } ;


 int argv_array_pushf (struct argv_array*,char const*,int,char const*) ;
 char** ref_rev_parse_rules ;
 int strlen (char const*) ;

void expand_ref_prefix(struct argv_array *prefixes, const char *prefix)
{
 const char **p;
 int len = strlen(prefix);

 for (p = ref_rev_parse_rules; *p; p++)
  argv_array_pushf(prefixes, *p, len, prefix);
}

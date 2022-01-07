
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {int argc; char** argv; } ;


 scalar_t__ starts_with (char const*,char const*) ;

__attribute__((used)) static int ref_match(const struct argv_array *prefixes, const char *refname)
{
 int i;

 if (!prefixes->argc)
  return 1;

 for (i = 0; i < prefixes->argc; i++) {
  const char *prefix = prefixes->argv[i];

  if (starts_with(refname, prefix))
   return 1;
 }

 return 0;
}

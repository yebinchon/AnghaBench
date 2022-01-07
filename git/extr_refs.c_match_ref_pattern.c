
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int string; int * util; } ;


 scalar_t__ skip_prefix (char const*,int ,char const**) ;
 int wildmatch (int ,char const*,int ) ;

__attribute__((used)) static int match_ref_pattern(const char *refname,
        const struct string_list_item *item)
{
 int matched = 0;
 if (item->util == ((void*)0)) {
  if (!wildmatch(item->string, refname, 0))
   matched = 1;
 } else {
  const char *rest;
  if (skip_prefix(refname, item->string, &rest) &&
      (!*rest || *rest == '/'))
   matched = 1;
 }
 return matched;
}

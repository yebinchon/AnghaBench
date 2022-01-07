
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refspec_item {char* src; char* dst; scalar_t__ pattern; scalar_t__ exact_sha1; } ;
struct refspec {int nr; scalar_t__ fetch; struct refspec_item* items; } ;
struct argv_array {int dummy; } ;


 scalar_t__ REFSPEC_FETCH ;
 int argv_array_pushf (struct argv_array*,char*,int,char const*) ;
 int expand_ref_prefix (struct argv_array*,char const*) ;
 char* strchr (char const*,char) ;

void refspec_ref_prefixes(const struct refspec *rs,
     struct argv_array *ref_prefixes)
{
 int i;
 for (i = 0; i < rs->nr; i++) {
  const struct refspec_item *item = &rs->items[i];
  const char *prefix = ((void*)0);

  if (item->exact_sha1)
   continue;
  if (rs->fetch == REFSPEC_FETCH)
   prefix = item->src;
  else if (item->dst)
   prefix = item->dst;
  else if (item->src && !item->exact_sha1)
   prefix = item->src;

  if (prefix) {
   if (item->pattern) {
    const char *glob = strchr(prefix, '*');
    argv_array_pushf(ref_prefixes, "%.*s",
       (int)(glob - prefix),
       prefix);
   } else {
    expand_ref_prefix(ref_prefixes, prefix);
   }
  }
 }
}

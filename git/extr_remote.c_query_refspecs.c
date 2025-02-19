
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refspec_item {char* src; char* dst; int force; scalar_t__ pattern; } ;
struct refspec {int nr; struct refspec_item* items; } ;


 int BUG (char*) ;
 scalar_t__ match_name_with_pattern (char const*,char const*,char const*,char**) ;
 int strcmp (char const*,char const*) ;
 char* xstrdup (char const*) ;

int query_refspecs(struct refspec *rs, struct refspec_item *query)
{
 int i;
 int find_src = !query->src;
 const char *needle = find_src ? query->dst : query->src;
 char **result = find_src ? &query->src : &query->dst;

 if (find_src && !query->dst)
  BUG("query_refspecs: need either src or dst");

 for (i = 0; i < rs->nr; i++) {
  struct refspec_item *refspec = &rs->items[i];
  const char *key = find_src ? refspec->dst : refspec->src;
  const char *value = find_src ? refspec->src : refspec->dst;

  if (!refspec->dst)
   continue;
  if (refspec->pattern) {
   if (match_name_with_pattern(key, needle, value, result)) {
    query->force = refspec->force;
    return 0;
   }
  } else if (!strcmp(needle, key)) {
   *result = xstrdup(value);
   query->force = refspec->force;
   return 0;
  }
 }
 return -1;
}

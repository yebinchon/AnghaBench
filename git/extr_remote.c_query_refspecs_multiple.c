
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct refspec_item {char* src; char* dst; scalar_t__ pattern; } ;
struct refspec {int nr; struct refspec_item* items; } ;


 int BUG (char*) ;
 scalar_t__ match_name_with_pattern (char const*,char const*,char const*,char**) ;
 int strcmp (char const*,char const*) ;
 int string_list_append (struct string_list*,char const*) ;
 int string_list_append_nodup (struct string_list*,char*) ;

__attribute__((used)) static void query_refspecs_multiple(struct refspec *rs,
        struct refspec_item *query,
        struct string_list *results)
{
 int i;
 int find_src = !query->src;

 if (find_src && !query->dst)
  BUG("query_refspecs_multiple: need either src or dst");

 for (i = 0; i < rs->nr; i++) {
  struct refspec_item *refspec = &rs->items[i];
  const char *key = find_src ? refspec->dst : refspec->src;
  const char *value = find_src ? refspec->src : refspec->dst;
  const char *needle = find_src ? query->dst : query->src;
  char **result = find_src ? &query->src : &query->dst;

  if (!refspec->dst)
   continue;
  if (refspec->pattern) {
   if (match_name_with_pattern(key, needle, value, result))
    string_list_append_nodup(results, *result);
  } else if (!strcmp(needle, key)) {
   string_list_append(results, value);
  }
 }
}

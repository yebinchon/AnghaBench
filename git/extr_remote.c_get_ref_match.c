
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refspec_item {char* dst; char* src; scalar_t__ matching; scalar_t__ pattern; scalar_t__ force; } ;
struct refspec {int nr; struct refspec_item* items; } ;
struct ref {int name; } ;


 int FROM_SRC ;
 int match_name_with_pattern (char const*,int ,char const*,char**) ;
 int starts_with (int ,char*) ;
 char* xstrdup (int ) ;

__attribute__((used)) static char *get_ref_match(const struct refspec *rs, const struct ref *ref,
      int send_mirror, int direction,
      const struct refspec_item **ret_pat)
{
 const struct refspec_item *pat;
 char *name;
 int i;
 int matching_refs = -1;
 for (i = 0; i < rs->nr; i++) {
  const struct refspec_item *item = &rs->items[i];
  if (item->matching &&
      (matching_refs == -1 || item->force)) {
   matching_refs = i;
   continue;
  }

  if (item->pattern) {
   const char *dst_side = item->dst ? item->dst : item->src;
   int match;
   if (direction == FROM_SRC)
    match = match_name_with_pattern(item->src, ref->name, dst_side, &name);
   else
    match = match_name_with_pattern(dst_side, ref->name, item->src, &name);
   if (match) {
    matching_refs = i;
    break;
   }
  }
 }
 if (matching_refs == -1)
  return ((void*)0);

 pat = &rs->items[matching_refs];
 if (pat->matching) {





  if (!send_mirror && !starts_with(ref->name, "refs/heads/"))
   return ((void*)0);
  name = xstrdup(ref->name);
 }
 if (ret_pat)
  *ret_pat = pat;
 return name;
}

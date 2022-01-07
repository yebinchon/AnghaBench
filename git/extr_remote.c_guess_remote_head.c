
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {char* symref; struct ref* next; int old_oid; int name; } ;


 struct ref* copy_ref (struct ref const*) ;
 struct ref const* find_ref_by_name (struct ref const*,char*) ;
 scalar_t__ oideq (int *,int *) ;
 scalar_t__ starts_with (int ,char*) ;

struct ref *guess_remote_head(const struct ref *head,
         const struct ref *refs,
         int all)
{
 const struct ref *r;
 struct ref *list = ((void*)0);
 struct ref **tail = &list;

 if (!head)
  return ((void*)0);






 if (head->symref)
  return copy_ref(find_ref_by_name(refs, head->symref));


 if (!all) {
  r = find_ref_by_name(refs, "refs/heads/master");
  if (r && oideq(&r->old_oid, &head->old_oid))
   return copy_ref(r);
 }


 for (r = refs; r; r = r->next) {
  if (r != head &&
      starts_with(r->name, "refs/heads/") &&
      oideq(&r->old_oid, &head->old_oid)) {
   *tail = copy_ref(r);
   tail = &((*tail)->next);
   if (!all)
    break;
  }
 }

 return list;
}

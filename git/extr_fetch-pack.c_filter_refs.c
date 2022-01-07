
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {void* match_status; struct ref* next; int old_oid; int name; } ;
struct oidset {int dummy; } ;
struct fetch_pack_args {int deepen; scalar_t__ fetch_all; } ;


 int ALLOW_REACHABLE_SHA1 ;
 int ALLOW_TIP_SHA1 ;
 struct oidset OIDSET_INIT ;
 void* REF_MATCHED ;
 void* REF_UNADVERTISED_NOT_ALLOWED ;
 int add_refs_to_oidset (struct oidset*,struct ref*) ;
 int allow_unadvertised_object_request ;
 scalar_t__ check_refname_format (int ,int ) ;
 struct ref* copy_ref (struct ref*) ;
 int free_one_ref (struct ref*) ;
 int free_refs (struct ref*) ;
 int is_unmatched_ref (struct ref*) ;
 int oidset_clear (struct oidset*) ;
 scalar_t__ oidset_contains (struct oidset*,int *) ;
 scalar_t__ starts_with (int ,char*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static void filter_refs(struct fetch_pack_args *args,
   struct ref **refs,
   struct ref **sought, int nr_sought)
{
 struct ref *newlist = ((void*)0);
 struct ref **newtail = &newlist;
 struct ref *unmatched = ((void*)0);
 struct ref *ref, *next;
 struct oidset tip_oids = OIDSET_INIT;
 int i;
 int strict = !(allow_unadvertised_object_request &
         (ALLOW_TIP_SHA1 | ALLOW_REACHABLE_SHA1));

 i = 0;
 for (ref = *refs; ref; ref = next) {
  int keep = 0;
  next = ref->next;

  if (starts_with(ref->name, "refs/") &&
      check_refname_format(ref->name, 0)) {




   free_one_ref(ref);
   continue;
  } else {
   while (i < nr_sought) {
    int cmp = strcmp(ref->name, sought[i]->name);
    if (cmp < 0)
     break;
    else if (cmp == 0) {
     keep = 1;
     sought[i]->match_status = REF_MATCHED;
    }
    i++;
   }

   if (!keep && args->fetch_all &&
       (!args->deepen || !starts_with(ref->name, "refs/tags/")))
    keep = 1;
  }

  if (keep) {
   *newtail = ref;
   ref->next = ((void*)0);
   newtail = &ref->next;
  } else {
   ref->next = unmatched;
   unmatched = ref;
  }
 }

 if (strict) {
  for (i = 0; i < nr_sought; i++) {
   ref = sought[i];
   if (!is_unmatched_ref(ref))
    continue;

   add_refs_to_oidset(&tip_oids, unmatched);
   add_refs_to_oidset(&tip_oids, newlist);
   break;
  }
 }


 for (i = 0; i < nr_sought; i++) {
  ref = sought[i];
  if (!is_unmatched_ref(ref))
   continue;

  if (!strict || oidset_contains(&tip_oids, &ref->old_oid)) {
   ref->match_status = REF_MATCHED;
   *newtail = copy_ref(ref);
   newtail = &(*newtail)->next;
  } else {
   ref->match_status = REF_UNADVERTISED_NOT_ALLOWED;
  }
 }

 oidset_clear(&tip_oids);
 free_refs(unmatched);

 *refs = newlist;
}

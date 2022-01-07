
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timestamp_t ;
struct ref {int old_oid; struct ref* next; } ;
struct object {scalar_t__ type; int flags; } ;
struct fetch_pack_args {int deepen; } ;
struct fetch_negotiator {int (* known_common ) (struct fetch_negotiator*,struct commit*) ;} ;
struct commit {scalar_t__ date; } ;


 int COMPLETE ;
 int OBJECT_INFO_QUICK ;
 scalar_t__ OBJ_COMMIT ;
 int commit_list_sort_by_date (int *) ;
 int complete ;
 struct object* deref_tag (int ,int ,int *,int ) ;
 int for_each_cached_alternate (int *,int ) ;
 int for_each_ref (int ,int *) ;
 int has_object_file_with_flags (int *,int ) ;
 int lookup_object (int ,int *) ;
 int mark_alternate_complete ;
 int mark_complete_oid ;
 int mark_recent_complete_commits (struct fetch_pack_args*,scalar_t__) ;
 struct object* parse_object (int ,int *) ;
 int save_commit_buffer ;
 int stub1 (struct fetch_negotiator*,struct commit*) ;
 int the_repository ;

__attribute__((used)) static void mark_complete_and_common_ref(struct fetch_negotiator *negotiator,
      struct fetch_pack_args *args,
      struct ref **refs)
{
 struct ref *ref;
 int old_save_commit_buffer = save_commit_buffer;
 timestamp_t cutoff = 0;

 save_commit_buffer = 0;

 for (ref = *refs; ref; ref = ref->next) {
  struct object *o;

  if (!has_object_file_with_flags(&ref->old_oid,
      OBJECT_INFO_QUICK))
   continue;
  o = parse_object(the_repository, &ref->old_oid);
  if (!o)
   continue;





  if (o->type == OBJ_COMMIT) {
   struct commit *commit = (struct commit *)o;
   if (!cutoff || cutoff < commit->date)
    cutoff = commit->date;
  }
 }

 if (!args->deepen) {
  for_each_ref(mark_complete_oid, ((void*)0));
  for_each_cached_alternate(((void*)0), mark_alternate_complete);
  commit_list_sort_by_date(&complete);
  if (cutoff)
   mark_recent_complete_commits(args, cutoff);
 }





 for (ref = *refs; ref; ref = ref->next) {
  struct object *o = deref_tag(the_repository,
          lookup_object(the_repository,
          &ref->old_oid),
          ((void*)0), 0);

  if (!o || o->type != OBJ_COMMIT || !(o->flags & COMPLETE))
   continue;

  negotiator->known_common(negotiator,
      (struct commit *)o);
 }

 save_commit_buffer = old_save_commit_buffer;
}

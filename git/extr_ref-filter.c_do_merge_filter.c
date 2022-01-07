
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rev_info {int limited; } ;
struct ref_filter_cbdata {struct ref_array* array; struct ref_filter* filter; } ;
struct ref_filter {scalar_t__ merge; TYPE_1__* merge_commit; } ;
struct ref_array_item {char* refname; struct commit* commit; } ;
struct ref_array {int nr; struct ref_array_item** items; } ;
struct TYPE_4__ {int flags; } ;
struct commit {TYPE_2__ object; } ;
struct TYPE_3__ {TYPE_2__ object; } ;


 int ALL_REV_FLAGS ;
 scalar_t__ REF_FILTER_MERGED_INCLUDE ;
 int UNINTERESTING ;
 int _ (char*) ;
 int add_pending_object (struct rev_info*,TYPE_2__*,char*) ;
 int clear_commit_marks (TYPE_1__*,int ) ;
 int clear_commit_marks_many (int,struct commit**,int ) ;
 int die (int ) ;
 int free (struct commit**) ;
 int free_array_item (struct ref_array_item*) ;
 scalar_t__ prepare_revision_walk (struct rev_info*) ;
 int repo_init_revisions (int ,struct rev_info*,int *) ;
 int the_repository ;
 struct commit** xcalloc (int,int) ;

__attribute__((used)) static void do_merge_filter(struct ref_filter_cbdata *ref_cbdata)
{
 struct rev_info revs;
 int i, old_nr;
 struct ref_filter *filter = ref_cbdata->filter;
 struct ref_array *array = ref_cbdata->array;
 struct commit **to_clear = xcalloc(sizeof(struct commit *), array->nr);

 repo_init_revisions(the_repository, &revs, ((void*)0));

 for (i = 0; i < array->nr; i++) {
  struct ref_array_item *item = array->items[i];
  add_pending_object(&revs, &item->commit->object, item->refname);
  to_clear[i] = item->commit;
 }

 filter->merge_commit->object.flags |= UNINTERESTING;
 add_pending_object(&revs, &filter->merge_commit->object, "");

 revs.limited = 1;
 if (prepare_revision_walk(&revs))
  die(_("revision walk setup failed"));

 old_nr = array->nr;
 array->nr = 0;

 for (i = 0; i < old_nr; i++) {
  struct ref_array_item *item = array->items[i];
  struct commit *commit = item->commit;

  int is_merged = !!(commit->object.flags & UNINTERESTING);

  if (is_merged == (filter->merge == REF_FILTER_MERGED_INCLUDE))
   array->items[array->nr++] = array->items[i];
  else
   free_array_item(item);
 }

 clear_commit_marks_many(old_nr, to_clear, ALL_REV_FLAGS);
 clear_commit_marks(filter->merge_commit, ALL_REV_FLAGS);
 free(to_clear);
}

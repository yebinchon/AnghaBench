
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_24__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int git_odb ;
struct TYPE_27__ {int default_driver; } ;
typedef TYPE_2__ git_merge_options ;
struct TYPE_28__ {int member_0; } ;
typedef TYPE_3__ git_merge_file_result ;
struct TYPE_29__ {scalar_t__ favor; } ;
typedef TYPE_4__ git_merge_file_options ;
struct TYPE_30__ {int * theirs; int * ours; int * ancestor; TYPE_4__ const* file_opts; int default_driver; int repo; int member_0; } ;
typedef TYPE_5__ git_merge_driver_source ;
struct TYPE_32__ {int apply; } ;
struct TYPE_25__ {int member_0; } ;
struct TYPE_31__ {scalar_t__ favor; TYPE_7__ base; TYPE_1__ member_0; } ;
typedef TYPE_6__ git_merge_driver__builtin ;
typedef TYPE_7__ git_merge_driver ;
struct TYPE_33__ {int resolved; int staged; int repo; } ;
typedef TYPE_8__ git_merge_diff_list ;
struct TYPE_34__ {int their_entry; int our_entry; int ancestor_entry; } ;
typedef TYPE_9__ git_merge_diff ;
typedef TYPE_9__ git_index_entry ;
struct TYPE_26__ {TYPE_7__ base; } ;


 int GIT_EMERGECONFLICT ;
 scalar_t__ GIT_MERGE_FILE_FAVOR_NORMAL ;
 scalar_t__ GIT_MERGE_INDEX_ENTRY_EXISTS (int ) ;
 int GIT_PASSTHROUGH ;
 int assert (int ) ;
 int git_merge_driver__builtin_apply ;
 TYPE_24__ git_merge_driver__text ;
 int git_merge_driver_for_source (char const**,TYPE_7__**,TYPE_5__*) ;
 int git_merge_file_result_free (TYPE_3__*) ;
 int git_odb_free (int *) ;
 int git_vector_insert (int *,TYPE_9__*) ;
 int merge_conflict_can_resolve_contents (TYPE_9__ const*) ;
 int merge_conflict_invoke_driver (TYPE_9__**,char const*,TYPE_7__*,TYPE_8__*,TYPE_5__*) ;

__attribute__((used)) static int merge_conflict_resolve_contents(
 int *resolved,
 git_merge_diff_list *diff_list,
 const git_merge_diff *conflict,
 const git_merge_options *merge_opts,
 const git_merge_file_options *file_opts)
{
 git_merge_driver_source source = {0};
 git_merge_file_result result = {0};
 git_merge_driver *driver;
 git_merge_driver__builtin builtin = {{0}};
 git_index_entry *merge_result;
 git_odb *odb = ((void*)0);
 const char *name;
 bool fallback = 0;
 int error;

 assert(resolved && diff_list && conflict);

 *resolved = 0;

 if (!merge_conflict_can_resolve_contents(conflict))
  return 0;

 source.repo = diff_list->repo;
 source.default_driver = merge_opts->default_driver;
 source.file_opts = file_opts;
 source.ancestor = GIT_MERGE_INDEX_ENTRY_EXISTS(conflict->ancestor_entry) ?
  &conflict->ancestor_entry : ((void*)0);
 source.ours = GIT_MERGE_INDEX_ENTRY_EXISTS(conflict->our_entry) ?
  &conflict->our_entry : ((void*)0);
 source.theirs = GIT_MERGE_INDEX_ENTRY_EXISTS(conflict->their_entry) ?
  &conflict->their_entry : ((void*)0);

 if (file_opts->favor != GIT_MERGE_FILE_FAVOR_NORMAL) {




  name = "text";
  builtin.base.apply = git_merge_driver__builtin_apply;
  builtin.favor = file_opts->favor;

  driver = &builtin.base;
 } else {

  if ((error = git_merge_driver_for_source(&name, &driver, &source)) < 0)
   goto done;

  if (driver == ((void*)0))
   fallback = 1;
 }

 if (driver) {
  error = merge_conflict_invoke_driver(&merge_result, name, driver,
   diff_list, &source);

  if (error == GIT_PASSTHROUGH)
   fallback = 1;
 }

 if (fallback) {
  error = merge_conflict_invoke_driver(&merge_result, "text",
   &git_merge_driver__text.base, diff_list, &source);
 }

 if (error < 0) {
  if (error == GIT_EMERGECONFLICT)
   error = 0;

  goto done;
 }

 git_vector_insert(&diff_list->staged, merge_result);
 git_vector_insert(&diff_list->resolved, (git_merge_diff *)conflict);

 *resolved = 1;

done:
 git_merge_file_result_free(&result);
 git_odb_free(odb);

 return error;
}

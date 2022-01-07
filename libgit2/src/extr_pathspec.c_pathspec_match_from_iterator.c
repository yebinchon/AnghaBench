
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32_t ;
struct pathspec_match_context {int dummy; } ;
struct TYPE_15__ {size_t length; } ;
typedef TYPE_1__ git_vector ;
struct TYPE_16__ {int pool; int failures; int matches; } ;
typedef TYPE_2__ git_pathspec_match_list ;
struct TYPE_17__ {int prefix; TYPE_1__ pathspec; } ;
typedef TYPE_3__ git_pathspec ;
typedef int git_iterator ;
struct TYPE_18__ {int path; } ;
typedef TYPE_4__ git_index_entry ;
typedef int git_index ;
typedef int git_bitvec ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 int GIT_ERROR_INVALID ;
 int GIT_INDEX_STAGE_ANY ;
 scalar_t__ GIT_ITERATOR_TYPE_WORKDIR ;
 int GIT_ITEROVER ;
 int GIT_PATHSPEC_FAILURES_ONLY ;
 int GIT_PATHSPEC_FIND_FAILURES ;
 int GIT_PATHSPEC_NO_GLOB ;
 int GIT_PATHSPEC_NO_MATCH_ERROR ;
 int PATHSPEC_DATATYPE_STRINGS ;
 scalar_t__ git_array_alloc (int ) ;
 int git_bitvec_free (int *) ;
 scalar_t__ git_bitvec_init (int *,size_t) ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_index__find_pos (int *,int *,int ,int ,int ) ;
 int git_iterator_advance (TYPE_4__ const**,int *) ;
 scalar_t__ git_iterator_current_is_ignored (int *) ;
 int git_iterator_ignore_case (int *) ;
 int git_iterator_owner (int *) ;
 int git_iterator_reset_range (int *,int ,int ) ;
 scalar_t__ git_iterator_type (int *) ;
 int git_pathspec__match_at (size_t*,TYPE_1__*,struct pathspec_match_context*,int ,int *) ;
 char* git_pool_strdup (int *,int ) ;
 int git_repository_index__weakptr (int **,int ) ;
 int pathspec_build_failure_array (int *,TYPE_1__*,int *,int *) ;
 scalar_t__ pathspec_mark_pattern (int *,size_t) ;
 scalar_t__ pathspec_mark_remaining (int *,TYPE_1__*,struct pathspec_match_context*,size_t,int ,int *) ;
 TYPE_2__* pathspec_match_alloc (TYPE_3__*,int ) ;
 int pathspec_match_context_init (struct pathspec_match_context*,int,int ) ;
 int pathspec_match_free (TYPE_2__*) ;

__attribute__((used)) static int pathspec_match_from_iterator(
 git_pathspec_match_list **out,
 git_iterator *iter,
 uint32_t flags,
 git_pathspec *ps)
{
 int error = 0;
 git_pathspec_match_list *m = ((void*)0);
 const git_index_entry *entry = ((void*)0);
 struct pathspec_match_context ctxt;
 git_vector *patterns = &ps->pathspec;
 bool find_failures = out && (flags & GIT_PATHSPEC_FIND_FAILURES) != 0;
 bool failures_only = !out || (flags & GIT_PATHSPEC_FAILURES_ONLY) != 0;
 size_t pos, used_ct = 0, found_files = 0;
 git_index *index = ((void*)0);
 git_bitvec used_patterns;
 char **file;

 if (git_bitvec_init(&used_patterns, patterns->length) < 0)
  return -1;

 if (out) {
  *out = m = pathspec_match_alloc(ps, PATHSPEC_DATATYPE_STRINGS);
  GIT_ERROR_CHECK_ALLOC(m);
 }

 if ((error = git_iterator_reset_range(iter, ps->prefix, ps->prefix)) < 0)
  goto done;

 if (git_iterator_type(iter) == GIT_ITERATOR_TYPE_WORKDIR &&
  (error = git_repository_index__weakptr(
   &index, git_iterator_owner(iter))) < 0)
  goto done;

 pathspec_match_context_init(
  &ctxt, (flags & GIT_PATHSPEC_NO_GLOB) != 0,
  git_iterator_ignore_case(iter));

 while (!(error = git_iterator_advance(&entry, iter))) {

  int result = git_pathspec__match_at(
   &pos, patterns, &ctxt, entry->path, ((void*)0));


  if (result < 0)
   continue;


  if (!result) {
   used_ct += pathspec_mark_pattern(&used_patterns, pos);
   continue;
  }


  if (index != ((void*)0) &&
   git_iterator_current_is_ignored(iter) &&
   git_index__find_pos(((void*)0), index, entry->path, 0, GIT_INDEX_STAGE_ANY) < 0)
   continue;


  used_ct += pathspec_mark_pattern(&used_patterns, pos);
  ++found_files;


  if (find_failures && used_ct < patterns->length)
   used_ct += pathspec_mark_remaining(
    &used_patterns, patterns, &ctxt, pos + 1, entry->path, ((void*)0));


  if (failures_only || !out) {
   if (used_ct == patterns->length)
    break;
   continue;
  }


  if ((file = (char **)git_array_alloc(m->matches)) == ((void*)0) ||
   (*file = git_pool_strdup(&m->pool, entry->path)) == ((void*)0)) {
   error = -1;
   goto done;
  }
 }

 if (error < 0 && error != GIT_ITEROVER)
  goto done;
 error = 0;


 if (find_failures && used_ct < patterns->length &&
  (error = pathspec_build_failure_array(
   &m->failures, patterns, &used_patterns, &m->pool)) < 0)
  goto done;


 if ((flags & GIT_PATHSPEC_NO_MATCH_ERROR) != 0 && !found_files) {
  git_error_set(GIT_ERROR_INVALID, "no matching files were found");
  error = GIT_ENOTFOUND;
 }

done:
 git_bitvec_free(&used_patterns);

 if (error < 0) {
  pathspec_match_free(m);
  if (out) *out = ((void*)0);
 }

 return error;
}

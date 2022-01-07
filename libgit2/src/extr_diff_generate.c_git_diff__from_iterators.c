
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_32__ {scalar_t__ stat_calls; } ;
typedef TYPE_2__ git_iterator ;
struct TYPE_33__ {int (* progress_cb ) (TYPE_5__*,int *,int *,int ) ;int payload; } ;
typedef TYPE_3__ git_diff_options ;
struct TYPE_31__ {int stat_calls; } ;
struct TYPE_35__ {int (* entrycomp ) (TYPE_7__*,TYPE_7__*) ;TYPE_1__ perf; } ;
struct TYPE_34__ {TYPE_5__ base; } ;
typedef TYPE_4__ git_diff_generated ;
typedef TYPE_5__ git_diff ;
struct TYPE_36__ {TYPE_7__* nitem; TYPE_7__* oitem; TYPE_2__* new_iter; TYPE_2__* old_iter; int * repo; } ;
typedef TYPE_6__ diff_in_progress ;
struct TYPE_37__ {int * path; } ;


 scalar_t__ DIFF_FLAG_IS_SET (TYPE_4__*,int ) ;
 int GIT_DIFF_IGNORE_CASE ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_4__*) ;
 TYPE_4__* diff_generated_alloc (int *,TYPE_2__*,TYPE_2__*) ;
 int diff_generated_apply_options (TYPE_4__*,TYPE_3__ const*) ;
 int git_diff_free (TYPE_5__*) ;
 int git_iterator_set_ignore_case (TYPE_2__*,int) ;
 int handle_matched_item (TYPE_4__*,TYPE_6__*) ;
 int handle_unmatched_new_item (TYPE_4__*,TYPE_6__*) ;
 int handle_unmatched_old_item (TYPE_4__*,TYPE_6__*) ;
 int iterator_current (TYPE_7__**,TYPE_2__*) ;
 int stub1 (TYPE_5__*,int *,int *,int ) ;
 int stub2 (TYPE_7__*,TYPE_7__*) ;

int git_diff__from_iterators(
 git_diff **out,
 git_repository *repo,
 git_iterator *old_iter,
 git_iterator *new_iter,
 const git_diff_options *opts)
{
 git_diff_generated *diff;
 diff_in_progress info;
 int error = 0;

 *out = ((void*)0);

 diff = diff_generated_alloc(repo, old_iter, new_iter);
 GIT_ERROR_CHECK_ALLOC(diff);

 info.repo = repo;
 info.old_iter = old_iter;
 info.new_iter = new_iter;


 if (DIFF_FLAG_IS_SET(diff, GIT_DIFF_IGNORE_CASE)) {
  git_iterator_set_ignore_case(old_iter, 1);
  git_iterator_set_ignore_case(new_iter, 1);
 }


 if ((error = diff_generated_apply_options(diff, opts)) < 0)
  goto cleanup;

 if ((error = iterator_current(&info.oitem, old_iter)) < 0 ||
  (error = iterator_current(&info.nitem, new_iter)) < 0)
  goto cleanup;


 while (!error && (info.oitem || info.nitem)) {
  int cmp;


  if (opts && opts->progress_cb) {
   if ((error = opts->progress_cb(&diff->base,
     info.oitem ? info.oitem->path : ((void*)0),
     info.nitem ? info.nitem->path : ((void*)0),
     opts->payload)))
    break;
  }

  cmp = info.oitem ?
   (info.nitem ? diff->base.entrycomp(info.oitem, info.nitem) : -1) : 1;


  if (cmp < 0)
   error = handle_unmatched_old_item(diff, &info);




  else if (cmp > 0)
   error = handle_unmatched_new_item(diff, &info);




  else
   error = handle_matched_item(diff, &info);
 }

 diff->base.perf.stat_calls +=
  old_iter->stat_calls + new_iter->stat_calls;

cleanup:
 if (!error)
  *out = &diff->base;
 else
  git_diff_free(&diff->base);

 return error;
}

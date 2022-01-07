
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int similarity_info ;
struct TYPE_14__ {TYPE_1__* metric; } ;
typedef TYPE_2__ git_diff_find_options ;
struct TYPE_15__ {int size; int id; int flags; int mode; int path; } ;
typedef TYPE_3__ git_diff_file ;
struct TYPE_16__ {scalar_t__ old_src; scalar_t__ new_src; } ;
typedef TYPE_4__ git_diff ;
typedef int b_info ;
typedef int a_info ;
struct TYPE_13__ {int (* similarity ) (int*,void*,void*,int ) ;int payload; } ;


 int FLAG_SET (TYPE_2__ const*,int ) ;
 int GIT_DIFF_FIND_EXACT_MATCH_ONLY ;
 int GIT_DIFF_FLAG_VALID_ID ;
 scalar_t__ GIT_ITERATOR_TYPE_WORKDIR ;
 int GIT_MODE_ISBLOB (int ) ;
 int git_diff__oid_for_file (int *,TYPE_4__*,int ,int ,int) ;
 scalar_t__ git_oid__cmp (int *,int *) ;
 scalar_t__ git_oid_is_zero (int *) ;
 int memset (int *,int ,int) ;
 TYPE_3__* similarity_get_file (TYPE_4__*,size_t) ;
 int similarity_init (int *,TYPE_4__*,size_t) ;
 int similarity_sig (int *,TYPE_2__ const*,void**) ;
 int similarity_unload (int *) ;
 int stub1 (int*,void*,void*,int ) ;

__attribute__((used)) static int similarity_measure(
 int *score,
 git_diff *diff,
 const git_diff_find_options *opts,
 void **cache,
 size_t a_idx,
 size_t b_idx)
{
 git_diff_file *a_file = similarity_get_file(diff, a_idx);
 git_diff_file *b_file = similarity_get_file(diff, b_idx);
 bool exact_match = FLAG_SET(opts, GIT_DIFF_FIND_EXACT_MATCH_ONLY);
 int error = 0;
 similarity_info a_info, b_info;

 *score = -1;


 if (!GIT_MODE_ISBLOB(a_file->mode) || !GIT_MODE_ISBLOB(b_file->mode))
  return 0;


 if (exact_match) {
  if (git_oid_is_zero(&a_file->id) &&
   diff->old_src == GIT_ITERATOR_TYPE_WORKDIR &&
   !git_diff__oid_for_file(&a_file->id,
    diff, a_file->path, a_file->mode, a_file->size))
   a_file->flags |= GIT_DIFF_FLAG_VALID_ID;

  if (git_oid_is_zero(&b_file->id) &&
   diff->new_src == GIT_ITERATOR_TYPE_WORKDIR &&
   !git_diff__oid_for_file(&b_file->id,
    diff, b_file->path, b_file->mode, b_file->size))
   b_file->flags |= GIT_DIFF_FLAG_VALID_ID;
 }


 if (git_oid__cmp(&a_file->id, &b_file->id) == 0) {
  *score = 100;
  return 0;
 }


 if (exact_match) {
  *score = 0;
  return 0;
 }

 memset(&a_info, 0, sizeof(a_info));
 memset(&b_info, 0, sizeof(b_info));


 if (!cache[a_idx] && (error = similarity_init(&a_info, diff, a_idx)) < 0)
  return error;
 if (!cache[b_idx] && (error = similarity_init(&b_info, diff, b_idx)) < 0)
  goto cleanup;


 if (a_file->size > 127 &&
  b_file->size > 127 &&
  (a_file->size > (b_file->size << 3) ||
   b_file->size > (a_file->size << 3)))
  goto cleanup;


 if (!cache[a_idx]) {
  if ((error = similarity_sig(&a_info, opts, cache)) < 0)
   goto cleanup;
 }
 if (!cache[b_idx]) {
  if ((error = similarity_sig(&b_info, opts, cache)) < 0)
   goto cleanup;
 }




 if (cache[a_idx] && cache[b_idx])
  error = opts->metric->similarity(
   score, cache[a_idx], cache[b_idx], opts->metric->payload);

cleanup:
 similarity_unload(&a_info);
 similarity_unload(&b_info);

 return error;
}

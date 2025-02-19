
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int rename_from_rewrite_threshold; int break_rewrite_threshold; } ;
typedef TYPE_2__ git_diff_find_options ;
struct TYPE_11__ {int mode; } ;
struct TYPE_13__ {int status; int flags; int similarity; TYPE_1__ old_file; } ;
typedef TYPE_3__ git_diff_delta ;
struct TYPE_14__ {int deltas; } ;
typedef TYPE_4__ git_diff ;


 int FLAG_SET (TYPE_2__ const*,int ) ;
 int GIT_DIFF_BREAK_REWRITES ;
 int GIT_DIFF_FIND_COPIES ;
 int GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED ;
 int GIT_DIFF_FIND_REMOVE_UNMODIFIED ;
 int GIT_DIFF_FIND_RENAMES_FROM_REWRITES ;
 int GIT_DIFF_FIND_REWRITES ;
 int GIT_DIFF_FLAG__IS_RENAME_SOURCE ;
 int GIT_DIFF_FLAG__TO_DELETE ;
 int GIT_DIFF_FLAG__TO_SPLIT ;
 int GIT_MODE_ISBLOB (int ) ;
 TYPE_3__* GIT_VECTOR_GET (int *,size_t) ;
 int calc_self_similarity (TYPE_4__*,TYPE_2__ const*,size_t,void**) ;

__attribute__((used)) static bool is_rename_source(
 git_diff *diff,
 const git_diff_find_options *opts,
 size_t delta_idx,
 void **cache)
{
 git_diff_delta *delta = GIT_VECTOR_GET(&diff->deltas, delta_idx);


 if (!GIT_MODE_ISBLOB(delta->old_file.mode))
  return 0;

 switch (delta->status) {
 case 135:
 case 128:
 case 129:
 case 132:
 case 134:
  return 0;

 case 133:
 case 131:
  break;

 case 130:
  if (!FLAG_SET(opts, GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED))
   return 0;
  if (FLAG_SET(opts, GIT_DIFF_FIND_REMOVE_UNMODIFIED))
   delta->flags |= GIT_DIFF_FLAG__TO_DELETE;
  break;

 default:

  if (FLAG_SET(opts, GIT_DIFF_FIND_COPIES))
   break;


  if (!FLAG_SET(opts, GIT_DIFF_FIND_REWRITES) &&
   !FLAG_SET(opts, GIT_DIFF_FIND_RENAMES_FROM_REWRITES))
   return 0;

  if (calc_self_similarity(diff, opts, delta_idx, cache) < 0)
   return 0;

  if (FLAG_SET(opts, GIT_DIFF_BREAK_REWRITES) &&
   delta->similarity < opts->break_rewrite_threshold) {
   delta->flags |= GIT_DIFF_FLAG__TO_SPLIT;
   break;
  }

  if (FLAG_SET(opts, GIT_DIFF_FIND_RENAMES_FROM_REWRITES) &&
   delta->similarity < opts->rename_from_rewrite_threshold)
   break;

  return 0;
 }

 delta->flags |= GIT_DIFF_FLAG__IS_RENAME_SOURCE;
 return 1;
}

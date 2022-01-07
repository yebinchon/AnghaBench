
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ length; scalar_t__ contents; } ;
typedef TYPE_3__ git_vector ;
typedef int git_repository ;
typedef int git_index ;
struct TYPE_11__ {scalar_t__ count; char** strings; } ;
struct TYPE_14__ {int ignore_submodules; TYPE_1__ pathspec; int flags; } ;
typedef TYPE_4__ git_diff_options ;
struct TYPE_12__ {size_t length; } ;
struct TYPE_15__ {TYPE_2__ deltas; } ;
typedef TYPE_5__ git_diff ;


 int GIT_DIFF_DISABLE_PATHSPEC_MATCH ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_4__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_SUBMODULE_IGNORE_ALL ;
 int GIT_UNUSED (int *) ;
 int git_diff_free (TYPE_5__*) ;
 int git_diff_index_to_workdir (TYPE_5__**,int *,int *,TYPE_4__*) ;

__attribute__((used)) static int merge_check_workdir(size_t *conflicts, git_repository *repo, git_index *index_new, git_vector *merged_paths)
{
 git_diff *wd_diff_list = ((void*)0);
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 int error = 0;

 GIT_UNUSED(index_new);

 *conflicts = 0;
 if (merged_paths->length == 0)
  return 0;

 opts.flags |= GIT_DIFF_INCLUDE_UNTRACKED;





 opts.flags |= GIT_DIFF_DISABLE_PATHSPEC_MATCH;
 opts.pathspec.count = merged_paths->length;
 opts.pathspec.strings = (char **)merged_paths->contents;
 opts.ignore_submodules = GIT_SUBMODULE_IGNORE_ALL;

 if ((error = git_diff_index_to_workdir(&wd_diff_list, repo, ((void*)0), &opts)) < 0)
  goto done;

 *conflicts = wd_diff_list->deltas.length;

done:
 git_diff_free(wd_diff_list);

 return error;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int flags; int show; } ;
typedef TYPE_1__ git_status_options ;
typedef int git_repository ;


 int GIT_ENOTFOUND ;
 int GIT_PASSTHROUGH ;
 int GIT_STASH_INCLUDE_IGNORED ;
 int GIT_STASH_INCLUDE_UNTRACKED ;
 TYPE_1__ GIT_STATUS_OPTIONS_INIT ;
 int GIT_STATUS_OPT_EXCLUDE_SUBMODULES ;
 int GIT_STATUS_OPT_INCLUDE_IGNORED ;
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ;
 int GIT_STATUS_OPT_RECURSE_IGNORED_DIRS ;
 int GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS ;
 int GIT_STATUS_SHOW_INDEX_AND_WORKDIR ;
 int create_error (int ,char*) ;
 int git_status_foreach_ext (int *,TYPE_1__*,int ,int *) ;
 int is_dirty_cb ;

__attribute__((used)) static int ensure_there_are_changes_to_stash(git_repository *repo, uint32_t flags)
{
 int error;
 git_status_options opts = GIT_STATUS_OPTIONS_INIT;

 opts.show = GIT_STATUS_SHOW_INDEX_AND_WORKDIR;
 opts.flags = GIT_STATUS_OPT_EXCLUDE_SUBMODULES;

 if (flags & GIT_STASH_INCLUDE_UNTRACKED)
  opts.flags |= GIT_STATUS_OPT_INCLUDE_UNTRACKED |
   GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS;

 if (flags & GIT_STASH_INCLUDE_IGNORED)
  opts.flags |= GIT_STATUS_OPT_INCLUDE_IGNORED |
   GIT_STATUS_OPT_RECURSE_IGNORED_DIRS;

 error = git_status_foreach_ext(repo, &opts, is_dirty_cb, ((void*)0));

 if (error == GIT_PASSTHROUGH)
  return 0;

 if (!error)
  return create_error(GIT_ENOTFOUND, "there is nothing to stash.");

 return error;
}

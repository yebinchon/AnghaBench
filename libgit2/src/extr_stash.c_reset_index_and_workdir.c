
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int git_repository ;
typedef int git_object ;
typedef int git_commit ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_REMOVE_IGNORED ;
 int GIT_CHECKOUT_REMOVE_UNTRACKED ;
 int GIT_STASH_INCLUDE_IGNORED ;
 int GIT_STASH_INCLUDE_UNTRACKED ;
 int git_checkout_tree (int *,int *,TYPE_1__*) ;

__attribute__((used)) static int reset_index_and_workdir(git_repository *repo, git_commit *commit, uint32_t flags)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 opts.checkout_strategy = GIT_CHECKOUT_FORCE;
 if (flags & GIT_STASH_INCLUDE_UNTRACKED)
  opts.checkout_strategy |= GIT_CHECKOUT_REMOVE_UNTRACKED;
 if (flags & GIT_STASH_INCLUDE_IGNORED)
  opts.checkout_strategy |= GIT_CHECKOUT_REMOVE_IGNORED;

 return git_checkout_tree(repo, (git_object *)commit, &opts);
}

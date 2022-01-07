
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_10__ ;


typedef int git_tree ;
struct TYPE_23__ {char** strings; scalar_t__ count; } ;
struct TYPE_26__ {TYPE_1__ pathspec; int flags; scalar_t__ context_lines; } ;
typedef TYPE_4__ git_diff_options ;
struct TYPE_27__ {int flags; } ;
typedef TYPE_5__ git_diff_find_options ;
struct TYPE_25__ {int path; } ;
struct TYPE_24__ {int path; } ;
struct TYPE_28__ {TYPE_3__ old_file; TYPE_2__ new_file; } ;
typedef TYPE_6__ git_diff_delta ;
typedef int git_diff ;
typedef int git_commit ;
struct TYPE_29__ {int path; int * commit; } ;
typedef TYPE_7__ git_blame__origin ;
struct TYPE_22__ {scalar_t__ contents; scalar_t__ length; } ;
struct TYPE_30__ {TYPE_10__ paths; int repository; } ;
typedef TYPE_8__ git_blame ;


 TYPE_5__ GIT_DIFF_FIND_OPTIONS_INIT ;
 int GIT_DIFF_FIND_RENAMES ;
 TYPE_4__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_DIFF_SKIP_BINARY_CHECK ;
 scalar_t__ git__strdup (int ) ;
 int git_blame__get_origin (TYPE_7__**,TYPE_8__*,int *,int ) ;
 scalar_t__ git_commit_tree (int **,int *) ;
 scalar_t__ git_diff_find_similar (int *,TYPE_5__*) ;
 int git_diff_free (int *) ;
 TYPE_6__* git_diff_get_delta (int *,int) ;
 scalar_t__ git_diff_num_deltas (int *) ;
 scalar_t__ git_diff_tree_to_tree (int **,int ,int *,int *,TYPE_4__*) ;
 int git_tree_free (int *) ;
 int git_vector_bsearch (int *,TYPE_10__*,int ) ;
 int git_vector_insert_sorted (TYPE_10__*,void*,int ) ;
 int make_origin (TYPE_7__**,int *,int ) ;
 int paths_on_dup ;

__attribute__((used)) static git_blame__origin* find_origin(
  git_blame *blame,
  git_commit *parent,
  git_blame__origin *origin)
{
 git_blame__origin *porigin = ((void*)0);
 git_diff *difflist = ((void*)0);
 git_diff_options diffopts = GIT_DIFF_OPTIONS_INIT;
 git_tree *otree=((void*)0), *ptree=((void*)0);


 if (0 != git_commit_tree(&otree, origin->commit) ||
     0 != git_commit_tree(&ptree, parent))
  goto cleanup;


 diffopts.context_lines = 0;
 diffopts.flags = GIT_DIFF_SKIP_BINARY_CHECK;


 diffopts.pathspec.count = blame->paths.length;
 diffopts.pathspec.strings = (char**)blame->paths.contents;
 if (0 != git_diff_tree_to_tree(&difflist, blame->repository, ptree, otree, &diffopts))
   goto cleanup;

 if (!git_diff_num_deltas(difflist)) {

  git_blame__get_origin(&porigin, blame, parent, origin->path);
 } else {
  git_diff_find_options findopts = GIT_DIFF_FIND_OPTIONS_INIT;
  int i;


  git_diff_free(difflist);
  diffopts.pathspec.count = 0;
  if (0 != git_diff_tree_to_tree(&difflist, blame->repository, ptree, otree, &diffopts))
   goto cleanup;


  findopts.flags = GIT_DIFF_FIND_RENAMES;
  if (0 != git_diff_find_similar(difflist, &findopts))
   goto cleanup;


  for (i=0; i<(int)git_diff_num_deltas(difflist); i++) {
   const git_diff_delta *delta = git_diff_get_delta(difflist, i);

   if (!git_vector_bsearch(((void*)0), &blame->paths, delta->new_file.path))
   {
    git_vector_insert_sorted(&blame->paths, (void*)git__strdup(delta->old_file.path),
      paths_on_dup);
    make_origin(&porigin, parent, delta->old_file.path);
   }
  }
 }

cleanup:
 git_diff_free(difflist);
 git_tree_free(otree);
 git_tree_free(ptree);
 return porigin;
}

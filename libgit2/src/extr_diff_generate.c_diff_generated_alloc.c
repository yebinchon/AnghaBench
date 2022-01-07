
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_11__ {int type; } ;
typedef TYPE_1__ git_iterator ;
typedef int git_diff_options ;
struct TYPE_13__ {int deltas; int pool; int opts; int attrsession; int free_fn; int patch_fn; int new_src; int old_src; int * repo; int type; } ;
struct TYPE_12__ {TYPE_4__ base; } ;
typedef TYPE_2__ git_diff_generated ;


 int GIT_DIFF_OPTIONS_INIT ;
 int GIT_DIFF_TYPE_GENERATED ;
 int GIT_REFCOUNT_INC (TYPE_4__*) ;
 int assert (int ) ;
 int diff_generated_free ;
 TYPE_2__* git__calloc (int,int) ;
 int git_attr_session__init (int *,int *) ;
 int git_diff__set_ignore_case (TYPE_4__*,int) ;
 int git_diff_delta__cmp ;
 int git_diff_free (TYPE_4__*) ;
 scalar_t__ git_iterator_ignore_case (TYPE_1__*) ;
 int git_patch_generated_from_diff ;
 int git_pool_init (int *,int) ;
 scalar_t__ git_vector_init (int *,int ,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static git_diff_generated *diff_generated_alloc(
 git_repository *repo,
 git_iterator *old_iter,
 git_iterator *new_iter)
{
 git_diff_generated *diff;
 git_diff_options dflt = GIT_DIFF_OPTIONS_INIT;

 assert(repo && old_iter && new_iter);

 if ((diff = git__calloc(1, sizeof(git_diff_generated))) == ((void*)0))
  return ((void*)0);

 GIT_REFCOUNT_INC(&diff->base);
 diff->base.type = GIT_DIFF_TYPE_GENERATED;
 diff->base.repo = repo;
 diff->base.old_src = old_iter->type;
 diff->base.new_src = new_iter->type;
 diff->base.patch_fn = git_patch_generated_from_diff;
 diff->base.free_fn = diff_generated_free;
 git_attr_session__init(&diff->base.attrsession, repo);
 memcpy(&diff->base.opts, &dflt, sizeof(git_diff_options));

 git_pool_init(&diff->base.pool, 1);

 if (git_vector_init(&diff->base.deltas, 0, git_diff_delta__cmp) < 0) {
  git_diff_free(&diff->base);
  return ((void*)0);
 }



 git_diff__set_ignore_case(
  &diff->base,
  git_iterator_ignore_case(old_iter) ||
  git_iterator_ignore_case(new_iter));

 return diff;
}

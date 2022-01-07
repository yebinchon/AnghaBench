
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_iterator ;
typedef int git_index ;
typedef int git_checkout_options ;


 int GIT_ERROR_CHECKOUT ;
 int GIT_REFCOUNT_INC (int *) ;
 int GIT_REFCOUNT_OWN (int *,int *) ;
 int git_checkout_iterator (int *,int *,int const*) ;
 int git_error_set (int ,char*) ;
 int git_index_free (int *) ;
 int * git_index_owner (int *) ;
 int git_iterator_for_index (int **,int *,int *,int *) ;
 int git_iterator_free (int *) ;
 int git_repository_index__weakptr (int **,int *) ;

int git_checkout_index(
 git_repository *repo,
 git_index *index,
 const git_checkout_options *opts)
{
 int error, owned = 0;
 git_iterator *index_i;

 if (!index && !repo) {
  git_error_set(GIT_ERROR_CHECKOUT,
   "must provide either repository or index to checkout");
  return -1;
 }

 if (index && repo &&
  git_index_owner(index) &&
  git_index_owner(index) != repo) {
  git_error_set(GIT_ERROR_CHECKOUT,
   "index to checkout does not match repository");
  return -1;
 } else if(index && repo && !git_index_owner(index)) {
  GIT_REFCOUNT_OWN(index, repo);
  owned = 1;
 }

 if (!repo)
  repo = git_index_owner(index);

 if (!index && (error = git_repository_index__weakptr(&index, repo)) < 0)
  return error;
 GIT_REFCOUNT_INC(index);

 if (!(error = git_iterator_for_index(&index_i, repo, index, ((void*)0))))
  error = git_checkout_iterator(index_i, index, opts);

 if (owned)
  GIT_REFCOUNT_OWN(index, ((void*)0));

 git_iterator_free(index_i);
 git_index_free(index);

 return error;
}

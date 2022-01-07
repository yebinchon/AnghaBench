
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct th_data {int path; } ;
typedef int git_repository ;
typedef int git_reference_iterator ;
typedef int git_reference ;


 int GIT_ELOCKED ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (scalar_t__,int) ;
 int cl_git_thread_pass (struct th_data*,int) ;
 scalar_t__ g_expected ;
 int git_error_clear () ;
 int git_reference_free (int *) ;
 int git_reference_iterator_free (int *) ;
 int git_reference_iterator_new (int **,int *) ;
 int git_reference_next (int **,int *) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;

__attribute__((used)) static void *iterate_refs(void *arg)
{
 struct th_data *data = (struct th_data *) arg;
 git_reference_iterator *i;
 git_reference *ref;
 int count = 0, error;
 git_repository *repo;

 cl_git_thread_pass(data, git_repository_open(&repo, data->path));
 do {
  error = git_reference_iterator_new(&i, repo);
 } while (error == GIT_ELOCKED);
 cl_git_thread_pass(data, error);

 for (count = 0; !git_reference_next(&ref, i); ++count) {
  cl_assert(ref != ((void*)0));
  git_reference_free(ref);
 }

 if (g_expected > 0)
  cl_assert_equal_i(g_expected, count);

 git_reference_iterator_free(i);

 git_repository_free(repo);
 git_error_clear();
 return arg;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_index ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;


 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_DIFF_REVERSE ;
 int _a ;
 int _b ;
 int _repo ;
 int cl_git_pass (int ) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int *,int *,TYPE_1__*) ;
 int git_diff_tree_to_index (int **,int *,int ,int *,TYPE_1__*) ;
 int git_error_clear () ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_remove_bypath (int *,char*) ;
 int git_repository_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_repository_open (int **,int ) ;
 int git_repository_path (int ) ;
 int git_thread_yield () ;

__attribute__((used)) static void *run_index_diffs_with_modifier(void *arg)
{
 int thread = *(int *)arg;
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 git_index *idx = ((void*)0);
 git_repository *repo;

 cl_git_pass(git_repository_open(&repo, git_repository_path(_repo)));
 cl_git_pass(git_repository_index(&idx, repo));


 if (thread == 0) {
  int i;

  for (i = 0; i < 300; ++i) {
   switch (i & 0x03) {
   case 0: (void)git_index_add_bypath(idx, "new_file"); break;
   case 1: (void)git_index_remove_bypath(idx, "modified_file"); break;
   case 2: (void)git_index_remove_bypath(idx, "new_file"); break;
   case 3: (void)git_index_add_bypath(idx, "modified_file"); break;
   }
   git_thread_yield();
  }

  goto done;
 }



 switch (thread & 0x03) {
 case 0: ;
  cl_git_pass(git_diff_index_to_workdir(&diff, repo, idx, &opts));
  break;
 case 1: ;
  cl_git_pass(git_diff_tree_to_index(&diff, repo, _a, idx, &opts));
  break;
 case 2: ;
  cl_git_pass(git_diff_tree_to_index(&diff, repo, _b, idx, &opts));
  break;
 case 3: ;
  opts.flags |= GIT_DIFF_REVERSE;
  cl_git_pass(git_diff_index_to_workdir(&diff, repo, idx, &opts));
  break;
 }



 git_diff_free(diff);

done:
 git_index_free(idx);
 git_repository_free(repo);
 git_error_clear();

 return arg;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int patches ;
typedef int git_repository ;
typedef int git_patch ;
struct TYPE_6__ {int context_lines; int interhunk_lines; int flags; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;
struct TYPE_7__ {int lines; int hunks; int files; int member_0; } ;
typedef TYPE_2__ diff_expects ;


 int GIT_DIFF_INCLUDE_IGNORED ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int PATCH_CACHE ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int *,int *,TYPE_1__*) ;
 size_t git_diff_num_deltas (int *) ;
 int git_patch_free (int *) ;
 int git_patch_from_diff (int **,int *,size_t) ;
 int iterate_over_patch (int *,TYPE_2__*) ;
 int memset (int **,int ,int) ;
 int rand () ;
 int srand (int) ;

void test_diff_diffiter__iterate_randomly_while_saving_state(void)
{
 git_repository *repo = cl_git_sandbox_init("status");
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 diff_expects exp = {0};
 git_patch *patches[PATCH_CACHE];
 size_t p, d, num_d;

 memset(patches, 0, sizeof(patches));

 opts.context_lines = 3;
 opts.interhunk_lines = 1;
 opts.flags |= GIT_DIFF_INCLUDE_IGNORED | GIT_DIFF_INCLUDE_UNTRACKED;

 cl_git_pass(git_diff_index_to_workdir(&diff, repo, ((void*)0), &opts));

 num_d = git_diff_num_deltas(diff);
 srand(121212);
 p = rand() % PATCH_CACHE;

 for (d = 0; d < num_d; ++d) {

  git_patch *patch = patches[p];
  patches[p] = ((void*)0);


  cl_git_pass(git_patch_from_diff(&patches[p], diff, d));
  cl_assert(patches[p] != ((void*)0));


  if (patch != ((void*)0)) {
   iterate_over_patch(patch, &exp);
   git_patch_free(patch);
  }

  p = rand() % PATCH_CACHE;
 }


 git_diff_free(diff);


 for (p = 0; p < PATCH_CACHE; p++) {
  git_patch *patch = patches[p];

  if (patch != ((void*)0)) {
   iterate_over_patch(patch, &exp);
   git_patch_free(patch);
  }
 }


 cl_assert_equal_i(13, exp.files);
 cl_assert_equal_i(8, exp.hunks);
 cl_assert_equal_i(14, exp.lines);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_patch ;
typedef int git_index ;
typedef int git_diff ;
struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_assert_equal_sz (int,int ) ;
 int cl_git_append2file (char*,char*) ;
 int cl_git_mkfile (char*,char const*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,int *) ;
 int git_diff_num_deltas (int *) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_patch_free (int *) ;
 int git_patch_from_diff (int **,int *,int ) ;
 int git_patch_to_buf (TYPE_1__*,int *) ;
 int git_repository_index (int **,int ) ;
 int overwrite_filemode (char const*,TYPE_1__*) ;

void test_diff_drivers__long_lines(void)
{
 const char *base = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non nisi ligula. Ut viverra enim sed lobortis suscipit.\nPhasellus eget erat odio. Praesent at est iaculis, ultricies augue vel, dignissim risus. Suspendisse at nisi quis turpis fringilla rutrum id sit amet nulla.\nNam eget dolor fermentum, aliquet nisl at, convallis tellus. Pellentesque rhoncus erat enim, id porttitor elit euismod quis.\nMauris sollicitudin magna odio, non egestas libero vehicula ut. Etiam et quam velit. Fusce eget libero rhoncus, ultricies felis sit amet, egestas purus.\nAliquam in semper tellus. Pellentesque adipiscing rutrum velit, quis malesuada lacus consequat eget.\n";
 git_index *idx;
 git_diff *diff;
 git_patch *patch;
 git_buf actual = GIT_BUF_INIT;
 const char *expected = "diff --git a/longlines.txt b/longlines.txt\nindex c1ce6ef..0134431 100644\n--- a/longlines.txt\n+++ b/longlines.txt\n@@ -3,3 +3,5 @@ Phasellus eget erat odio. Praesent at est iaculis, ultricies augue vel, dignissi\n Nam eget dolor fermentum, aliquet nisl at, convallis tellus. Pellentesque rhoncus erat enim, id porttitor elit euismod quis.\n Mauris sollicitudin magna odio, non egestas libero vehicula ut. Etiam et quam velit. Fusce eget libero rhoncus, ultricies felis sit amet, egestas purus.\n Aliquam in semper tellus. Pellentesque adipiscing rutrum velit, quis malesuada lacus consequat eget.\n+newline\n+newline\n";

 g_repo = cl_git_sandbox_init("empty_standard_repo");

 cl_git_mkfile("empty_standard_repo/longlines.txt", base);
 cl_git_pass(git_repository_index(&idx, g_repo));
 cl_git_pass(git_index_add_bypath(idx, "longlines.txt"));
 cl_git_pass(git_index_write(idx));
 git_index_free(idx);

 cl_git_append2file("empty_standard_repo/longlines.txt", "newline\nnewline\n");

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), ((void*)0)));
 cl_assert_equal_sz(1, git_diff_num_deltas(diff));
 cl_git_pass(git_patch_from_diff(&patch, diff, 0));
 cl_git_pass(git_patch_to_buf(&actual, patch));


 overwrite_filemode(expected, &actual);

 cl_assert_equal_s(expected, actual.ptr);

 git_buf_dispose(&actual);
 git_patch_free(patch);
 git_diff_free(diff);
}

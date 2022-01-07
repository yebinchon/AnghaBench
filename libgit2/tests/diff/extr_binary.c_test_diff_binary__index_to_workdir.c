
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_patch ;
typedef int git_index ;
struct TYPE_9__ {int flags; int id_abbrev; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;
struct TYPE_10__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_DIFF_FORCE_BINARY ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_DIFF_SHOW_BINARY ;
 int GIT_OID_HEXSZ ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_append2file (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,TYPE_1__*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_patch_free (int *) ;
 int git_patch_from_diff (int **,int *,int ) ;
 int git_patch_to_buf (TYPE_2__*,int *) ;
 int git_repository_index (int **,int ) ;
 int repo ;
 int test_patch (char*,int *,TYPE_1__*,char const*) ;

void test_diff_binary__index_to_workdir(void)
{
 git_index *index;
 git_diff *diff;
 git_patch *patch;
 git_buf actual = GIT_BUF_INIT;
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 const char *expected =
  "diff --git a/untimely.txt b/untimely.txt\n" "index 9a69d960ae94b060f56c2a8702545e2bb1abb935..1111d4f11f4b35bf6759e0fb714fe09731ef0840 100644\n" "GIT binary patch\n" "delta 32\n" "nc%1vf+QYWt3zLL@hC)e3Vu?a>QDRl4f_G*?PG(-ZA}<#J$+QbW\n" "\n" "delta 7\n" "Oc%18D`@*{63ljhg(E~C7\n" "\n";
 opts.flags = GIT_DIFF_SHOW_BINARY | GIT_DIFF_FORCE_BINARY;
 opts.id_abbrev = GIT_OID_HEXSZ;

 repo = cl_git_sandbox_init("renames");
 cl_git_pass(git_repository_index(&index, repo));

 cl_git_append2file("renames/untimely.txt", "Oh that crazy Kipling!\r\n");

 cl_git_pass(git_diff_index_to_workdir(&diff, repo, index, &opts));

 cl_git_pass(git_patch_from_diff(&patch, diff, 0));
 cl_git_pass(git_patch_to_buf(&actual, patch));

 cl_assert_equal_s(expected, actual.ptr);

 cl_git_pass(git_index_add_bypath(index, "untimely.txt"));
 cl_git_pass(git_index_write(index));

 test_patch(
  "19dd32dfb1520a64e5bbaae8dce6ef423dfa2f13",
  ((void*)0),
  &opts,
  expected);

 git_buf_dispose(&actual);
 git_patch_free(patch);
 git_diff_free(diff);
 git_index_free(index);
}

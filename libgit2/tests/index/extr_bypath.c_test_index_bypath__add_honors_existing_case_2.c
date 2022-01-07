
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int member_0; } ;
struct TYPE_7__ {char* path; int id; int mode; TYPE_1__ member_0; } ;
typedef TYPE_2__ git_index_entry ;


 int GIT_FILEMODE_BLOB ;
 int cl_assert (TYPE_2__ const*) ;
 int cl_assert_equal_s (char*,char*) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_repo_get_bool (int ,char*) ;
 int clar__skip () ;
 int g_idx ;
 int g_repo ;
 int git_index_add (int ,TYPE_2__*) ;
 int git_index_add_bypath (int ,char*) ;
 TYPE_2__* git_index_get_bypath (int ,char*,int ) ;
 int git_oid_fromstr (int *,char*) ;

void test_index_bypath__add_honors_existing_case_2(void)
{
 git_index_entry dummy = { { 0 } };
 const git_index_entry *entry;

 if (!cl_repo_get_bool(g_repo, "core.ignorecase"))
  clar__skip();

 dummy.mode = GIT_FILEMODE_BLOB;
 cl_git_pass(git_oid_fromstr(&dummy.id, "f990a25a74d1a8281ce2ab018ea8df66795cd60b"));


 dummy.path = "Just_a_dir/file0.txt";
 cl_git_pass(git_index_add(g_idx, &dummy));

 dummy.path = "just_a_dir/fileA.txt";
 cl_git_pass(git_index_add(g_idx, &dummy));

 dummy.path = "Just_A_Dir/fileB.txt";
 cl_git_pass(git_index_add(g_idx, &dummy));

 dummy.path = "JUST_A_DIR/fileC.txt";
 cl_git_pass(git_index_add(g_idx, &dummy));

 dummy.path = "just_A_dir/fileD.txt";
 cl_git_pass(git_index_add(g_idx, &dummy));

 dummy.path = "JUST_a_DIR/fileE.txt";
 cl_git_pass(git_index_add(g_idx, &dummy));

 cl_git_mkfile("submod2/just_a_dir/file1.txt", "This is a file");
 cl_git_mkfile("submod2/just_a_dir/file2.txt", "This is another file");
 cl_git_mkfile("submod2/just_a_dir/file3.txt", "This is another file");
 cl_git_mkfile("submod2/just_a_dir/file4.txt", "And another file");

 cl_git_pass(git_index_add_bypath(g_idx, "just_a_dir/File1.txt"));
 cl_git_pass(git_index_add_bypath(g_idx, "JUST_A_DIR/file2.txt"));
 cl_git_pass(git_index_add_bypath(g_idx, "Just_A_Dir/FILE3.txt"));
 cl_git_pass(git_index_add_bypath(g_idx, "JusT_A_DIR/FILE4.txt"));

 cl_assert(entry = git_index_get_bypath(g_idx, "just_a_dir/File1.txt", 0));
 cl_assert_equal_s("just_a_dir/File1.txt", entry->path);

 cl_assert(entry = git_index_get_bypath(g_idx, "JUST_A_DIR/file2.txt", 0));
 cl_assert_equal_s("JUST_A_DIR/file2.txt", entry->path);

 cl_assert(entry = git_index_get_bypath(g_idx, "Just_A_Dir/FILE3.txt", 0));
 cl_assert_equal_s("Just_A_Dir/FILE3.txt", entry->path);

 cl_git_rewritefile("submod2/just_a_dir/file3.txt", "Rewritten");
 cl_git_pass(git_index_add_bypath(g_idx, "Just_A_Dir/file3.txt"));

 cl_assert(entry = git_index_get_bypath(g_idx, "Just_A_Dir/file3.txt", 0));
 cl_assert_equal_s("Just_A_Dir/FILE3.txt", entry->path);
}

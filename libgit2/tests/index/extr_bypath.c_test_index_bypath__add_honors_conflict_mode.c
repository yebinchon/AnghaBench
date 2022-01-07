
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* path; int flags; int mode; } ;
typedef TYPE_1__ git_index_entry ;


 int GIT_FILEMODE_BLOB_EXECUTABLE ;
 int GIT_INDEX_ENTRY_STAGESHIFT ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_must_pass (int ) ;
 int g_idx ;
 int git_index_add (int ,TYPE_1__*) ;
 int git_index_add_bypath (int ,char*) ;
 TYPE_1__* git_index_get_bypath (int ,char*,int ) ;
 int git_index_remove_bypath (int ,char*) ;
 int git_index_write (int ) ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;
 int p_chmod (char*,int ) ;

void test_index_bypath__add_honors_conflict_mode(void)
{
 const git_index_entry *entry;
 git_index_entry new_entry;
 int stage = 0;

 cl_assert((entry = git_index_get_bypath(g_idx, "README.txt", 0)) != ((void*)0));

 memcpy(&new_entry, entry, sizeof(git_index_entry));
 new_entry.path = "README.txt";
 new_entry.mode = GIT_FILEMODE_BLOB_EXECUTABLE;

 cl_must_pass(p_chmod("submod2/README.txt", GIT_FILEMODE_BLOB_EXECUTABLE));

 cl_git_pass(git_index_remove_bypath(g_idx, "README.txt"));

 for (stage = 1; stage <= 3; stage++) {
  new_entry.flags = stage << GIT_INDEX_ENTRY_STAGESHIFT;
  cl_git_pass(git_index_add(g_idx, &new_entry));
 }

 cl_git_pass(git_index_write(g_idx));

 cl_git_rewritefile("submod2/README.txt", "Modified but still executable");

 cl_git_pass(git_index_add_bypath(g_idx, "README.txt"));
 cl_git_pass(git_index_write(g_idx));

 cl_assert((entry = git_index_get_bypath(g_idx, "README.txt", 0)) != ((void*)0));
 cl_assert_equal_i(GIT_FILEMODE_BLOB_EXECUTABLE, entry->mode);
}

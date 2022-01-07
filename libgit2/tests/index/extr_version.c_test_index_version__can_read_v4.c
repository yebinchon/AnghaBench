
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index_entry ;
typedef int git_index ;


 size_t ARRAY_SIZE (char const**) ;
 int GIT_INDEX_STAGE_NORMAL ;
 int cl_assert (int ) ;
 int cl_assert_equal_sz (int ,int) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_index_entrycount (int *) ;
 int git_index_free (int *) ;
 int * git_index_get_bypath (int *,char const*,int ) ;
 int git_repository_index (int **,int ) ;

void test_index_version__can_read_v4(void)
{
 const char *paths[] = {
     "file.tx", "file.txt", "file.txz", "foo", "zzz",
 };
 git_index *index;
 size_t i;

 g_repo = cl_git_sandbox_init("indexv4");

 cl_git_pass(git_repository_index(&index, g_repo));
 cl_assert_equal_sz(git_index_entrycount(index), 5);

 for (i = 0; i < ARRAY_SIZE(paths); i++) {
  const git_index_entry *entry =
      git_index_get_bypath(index, paths[i], GIT_INDEX_STAGE_NORMAL);

  cl_assert(entry != ((void*)0));
 }

 git_index_free(index);
}

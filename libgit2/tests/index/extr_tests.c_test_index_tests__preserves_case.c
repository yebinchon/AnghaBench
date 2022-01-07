
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_3__ {int path; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;


 int GIT_INDEX_CAPABILITY_IGNORE_CASE ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_set_cleanup (int *,int *) ;
 int cleanup_myrepo ;
 scalar_t__ git__strcmp (int ,char*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_caps (int *) ;
 scalar_t__ git_index_entrycount (int *) ;
 int git_index_free (int *) ;
 TYPE_1__* git_index_get_bypath (int *,char*,int ) ;
 int git_repository_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_repository_init (int **,char*,int ) ;
 int p_rename (char*,char*) ;

void test_index_tests__preserves_case(void)
{
 git_repository *repo;
 git_index *index;
 const git_index_entry *entry;
 int index_caps;

 cl_set_cleanup(&cleanup_myrepo, ((void*)0));

 cl_git_pass(git_repository_init(&repo, "./myrepo", 0));
 cl_git_pass(git_repository_index(&index, repo));

 index_caps = git_index_caps(index);

 cl_git_rewritefile("myrepo/test.txt", "hey there\n");
 cl_git_pass(git_index_add_bypath(index, "test.txt"));

 cl_git_pass(p_rename("myrepo/test.txt", "myrepo/TEST.txt"));
 cl_git_rewritefile("myrepo/TEST.txt", "hello again\n");
 cl_git_pass(git_index_add_bypath(index, "TEST.txt"));

 if (index_caps & GIT_INDEX_CAPABILITY_IGNORE_CASE)
  cl_assert_equal_i(1, (int)git_index_entrycount(index));
 else
  cl_assert_equal_i(2, (int)git_index_entrycount(index));


 cl_assert((entry = git_index_get_bypath(index, "test.txt", 0)) != ((void*)0));

 cl_assert(git__strcmp(entry->path, "test.txt") == 0);

 cl_assert((entry = git_index_get_bypath(index, "TEST.txt", 0)) != ((void*)0));
 if (index_caps & GIT_INDEX_CAPABILITY_IGNORE_CASE)

  cl_assert(git__strcmp(entry->path, "test.txt") == 0);
 else
  cl_assert(git__strcmp(entry->path, "TEST.txt") == 0);

 git_index_free(index);
 git_repository_free(repo);
}

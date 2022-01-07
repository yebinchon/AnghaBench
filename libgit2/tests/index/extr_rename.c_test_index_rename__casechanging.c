
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_8__ {int member_0; } ;
struct TYPE_9__ {char* path; TYPE_1__ member_0; } ;
typedef TYPE_2__ git_index_entry ;
typedef int git_index ;


 int cl_assert (TYPE_2__ const*) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_fixture_cleanup (char*) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 scalar_t__ cl_repo_get_bool (int *,char*) ;
 int git_index_add (int *,TYPE_2__*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_entrycount (int *) ;
 int git_index_free (int *) ;
 TYPE_2__* git_index_get_bypath (int *,char*,int ) ;
 int git_repository_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_repository_init (int **,char*,int ) ;
 int memcpy (TYPE_2__*,TYPE_2__ const*,int) ;
 int p_mkdir (char*,int) ;

void test_index_rename__casechanging(void)
{
 git_repository *repo;
 git_index *index;
 const git_index_entry *entry;
 git_index_entry new = {{0}};

 p_mkdir("rename", 0700);

 cl_git_pass(git_repository_init(&repo, "./rename", 0));
 cl_git_pass(git_repository_index(&index, repo));

 cl_git_mkfile("./rename/lame.name.txt", "new_file\n");

 cl_git_pass(git_index_add_bypath(index, "lame.name.txt"));
 cl_assert_equal_i(1, git_index_entrycount(index));
 cl_assert((entry = git_index_get_bypath(index, "lame.name.txt", 0)));

 memcpy(&new, entry, sizeof(git_index_entry));
 new.path = "LAME.name.TXT";

 cl_git_pass(git_index_add(index, &new));
 cl_assert((entry = git_index_get_bypath(index, "LAME.name.TXT", 0)));

 if (cl_repo_get_bool(repo, "core.ignorecase"))
  cl_assert_equal_i(1, git_index_entrycount(index));
 else
  cl_assert_equal_i(2, git_index_entrycount(index));

 git_index_free(index);
 git_repository_free(repo);

 cl_fixture_cleanup("rename");
}

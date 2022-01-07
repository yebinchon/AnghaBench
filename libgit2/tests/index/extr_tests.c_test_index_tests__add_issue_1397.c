
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_oid ;
struct TYPE_3__ {int id; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;


 int cl_assert (int ) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int cl_repo_set_bool (int *,char*,int) ;
 int cl_set_cleanup (int *,int *) ;
 int cleanup_1397 ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 TYPE_1__* git_index_get_bypath (int *,char*,int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_index (int **,int *) ;

void test_index_tests__add_issue_1397(void)
{
 git_index *index;
 git_repository *repo;
 const git_index_entry *entry;
 git_oid id1;

 cl_set_cleanup(&cleanup_1397, ((void*)0));

 repo = cl_git_sandbox_init("issue_1397");

 cl_repo_set_bool(repo, "core.autocrlf", 1);


 cl_git_pass(git_repository_index(&index, repo));





 cl_git_pass(git_oid_fromstr(&id1, "8312e0889a9cbab77c732b6bc39b51a683e3a318"));


 cl_assert((entry = git_index_get_bypath(index, "crlf_file.txt", 0)) != ((void*)0));
 cl_assert_equal_oid(&id1, &entry->id);


 cl_git_pass(git_index_add_bypath(index, "crlf_file.txt"));


 cl_assert((entry = git_index_get_bypath(index, "crlf_file.txt", 0)) != ((void*)0));
 cl_assert_equal_oid(&id1, &entry->id);

 git_index_free(index);
}

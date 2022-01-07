
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_oid ;
struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {char* path; int mode; int id; TYPE_1__ member_0; } ;
typedef TYPE_2__ git_index_entry ;
typedef int git_index ;


 int GIT_FILEMODE_BLOB ;
 int cl_fixture_cleanup (char*) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_index_add (int *,TYPE_2__*) ;
 int git_index_free (int *) ;
 int git_index_new (int **) ;
 int git_index_write_tree_to (int *,int *,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int ) ;

void test_index_tests__write_tree_invalid_unowned_index(void)
{
 git_index *idx;
 git_repository *repo;
 git_index_entry entry = {{0}};
 git_oid tree_id;

 cl_git_pass(git_index_new(&idx));

 cl_git_pass(git_oid_fromstr(&entry.id, "8312e0a89a9cbab77c732b6bc39b51a783e3a318"));
 entry.path = "foo";
 entry.mode = GIT_FILEMODE_BLOB;
 cl_git_pass(git_index_add(idx, &entry));

 cl_git_pass(git_repository_init(&repo, "./invalid-id", 0));

 cl_git_fail(git_index_write_tree_to(&tree_id, idx, repo));

 git_index_free(idx);
 git_repository_free(repo);

 cl_fixture_cleanup("invalid-id");
}

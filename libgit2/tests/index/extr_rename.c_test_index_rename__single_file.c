
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


 int cl_assert (int) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_fixture_cleanup (char*) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_entrycount (int *) ;
 int git_index_find (size_t*,int *,char*) ;
 int git_index_free (int *) ;
 TYPE_1__* git_index_get_byindex (int *,size_t) ;
 int git_index_remove (int *,char*,int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_repository_init (int **,char*,int ) ;
 int p_mkdir (char*,int) ;
 int p_rename (char*,char*) ;

void test_index_rename__single_file(void)
{
 git_repository *repo;
 git_index *index;
 size_t position;
 git_oid expected;
 const git_index_entry *entry;

 p_mkdir("rename", 0700);

 cl_git_pass(git_repository_init(&repo, "./rename", 0));
 cl_git_pass(git_repository_index(&index, repo));

 cl_assert(git_index_entrycount(index) == 0);

 cl_git_mkfile("./rename/lame.name.txt", "new_file\n");


 cl_git_pass(git_index_add_bypath(index, "lame.name.txt"));
 cl_assert(git_index_entrycount(index) == 1);

 cl_git_pass(git_oid_fromstr(&expected, "d4fa8600b4f37d7516bef4816ae2c64dbf029e3a"));

 cl_assert(!git_index_find(&position, index, "lame.name.txt"));

 entry = git_index_get_byindex(index, position);
 cl_assert_equal_oid(&expected, &entry->id);


 cl_git_pass(git_index_remove(index, "lame.name.txt", 0));
 cl_assert(git_index_entrycount(index) == 0);

 p_rename("./rename/lame.name.txt", "./rename/fancy.name.txt");

 cl_git_pass(git_index_add_bypath(index, "fancy.name.txt"));
 cl_assert(git_index_entrycount(index) == 1);

 cl_assert(!git_index_find(&position, index, "fancy.name.txt"));

 entry = git_index_get_byindex(index, position);
 cl_assert_equal_oid(&expected, &entry->id);

 git_index_free(index);
 git_repository_free(repo);

 cl_fixture_cleanup("rename");
}

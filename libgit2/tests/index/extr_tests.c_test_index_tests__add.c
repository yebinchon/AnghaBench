
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_oid ;
struct TYPE_4__ {int id; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;
typedef int git_filebuf ;


 int GIT_FILEBUF_INIT ;
 int cl_assert (int) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,int *) ;
 int cleanup_myrepo ;
 int git_filebuf_commit (int *) ;
 int git_filebuf_open (int *,char*,int ,int) ;
 int git_filebuf_write (int *,char*,int) ;
 int git_futils_mkpath2file (char*,int) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_entrycount (int *) ;
 int git_index_free (int *) ;
 TYPE_1__* git_index_get_byindex (int *,int ) ;
 TYPE_1__* git_index_get_bypath (int *,char*,int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_repository_init (int **,char*,int ) ;

void test_index_tests__add(void)
{
 git_index *index;
 git_filebuf file = GIT_FILEBUF_INIT;
 git_repository *repo;
 const git_index_entry *entry;
 git_oid id1;

 cl_set_cleanup(&cleanup_myrepo, ((void*)0));


 cl_git_pass(git_repository_init(&repo, "./myrepo", 0));


 cl_git_pass(git_repository_index(&index, repo));
 cl_assert(git_index_entrycount(index) == 0);


 cl_git_pass(git_futils_mkpath2file("myrepo/test.txt", 0777));
 cl_git_pass(git_filebuf_open(&file, "myrepo/test.txt", 0, 0666));
 cl_git_pass(git_filebuf_write(&file, "hey there\n", 10));
 cl_git_pass(git_filebuf_commit(&file));





 cl_git_pass(git_oid_fromstr(&id1, "a8233120f6ad708f843d861ce2b7228ec4e3dec6"));


 cl_git_pass(git_index_add_bypath(index, "test.txt"));


 cl_assert(git_index_entrycount(index) == 1);
 entry = git_index_get_byindex(index, 0);


 cl_assert_equal_oid(&id1, &entry->id);


 cl_assert((entry = git_index_get_bypath(index, "test.txt", 0)) != ((void*)0));
 cl_assert_equal_oid(&id1, &entry->id);

 git_index_free(index);
 git_repository_free(repo);
}

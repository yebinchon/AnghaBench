
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_7__ {int index_file_path; } ;
typedef TYPE_1__ git_index ;
typedef int git_filebuf ;
struct TYPE_8__ {int klass; } ;
typedef TYPE_2__ git_error ;


 int GIT_ELOCKED ;
 int GIT_ERROR_INDEX ;
 int GIT_FILEBUF_INIT ;
 int cl_assert_equal_i (int ,int) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,int *) ;
 int cleanup_myrepo ;
 TYPE_2__* git_error_last () ;
 int git_filebuf_cleanup (int *) ;
 int git_filebuf_open (int *,int ,int ,int) ;
 int git_index_free (TYPE_1__*) ;
 int git_index_write (TYPE_1__*) ;
 int git_repository_free (int *) ;
 int git_repository_index (TYPE_1__**,int *) ;
 int git_repository_init (int **,char*,int ) ;

void test_index_tests__elocked(void)
{
 git_repository *repo;
 git_index *index;
 git_filebuf file = GIT_FILEBUF_INIT;
 const git_error *err;
 int error;

 cl_set_cleanup(&cleanup_myrepo, ((void*)0));

 cl_git_pass(git_repository_init(&repo, "./myrepo", 0));
 cl_git_pass(git_repository_index(&index, repo));


 cl_git_pass(git_filebuf_open(&file, index->index_file_path, 0, 0666));
 error = git_index_write(index);
 cl_assert_equal_i(GIT_ELOCKED, error);

 err = git_error_last();
 cl_assert_equal_i(err->klass, GIT_ERROR_INDEX);

 git_filebuf_cleanup(&file);
 git_index_free(index);
 git_repository_free(repo);
}

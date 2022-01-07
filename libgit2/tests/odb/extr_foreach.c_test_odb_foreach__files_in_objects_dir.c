
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_odb ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_i (int,int) ;
 int cl_fixture_cleanup (char*) ;
 int cl_fixture_sandbox (char*) ;
 int cl_git_mkfile (int ,char*) ;
 int cl_git_pass (int ) ;
 int foreach_cb ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_printf (TYPE_1__*,char*,int ) ;
 int git_odb_foreach (int *,int ,int*) ;
 int git_odb_free (int *) ;
 int git_repository_free (int *) ;
 int git_repository_odb (int **,int *) ;
 int git_repository_open (int **,char*) ;
 int git_repository_path (int *) ;

void test_odb_foreach__files_in_objects_dir(void)
{
 git_repository *repo;
 git_odb *odb;
 git_buf buf = GIT_BUF_INIT;
 int nobj = 0;

 cl_fixture_sandbox("testrepo.git");
 cl_git_pass(git_repository_open(&repo, "testrepo.git"));

 cl_git_pass(git_buf_printf(&buf, "%s/objects/somefile", git_repository_path(repo)));
 cl_git_mkfile(buf.ptr, "");
 git_buf_dispose(&buf);

 cl_git_pass(git_repository_odb(&odb, repo));
 cl_git_pass(git_odb_foreach(odb, foreach_cb, &nobj));
 cl_assert_equal_i(60 + 1640, nobj);

 git_odb_free(odb);
 git_repository_free(repo);
 cl_fixture_cleanup("testrepo.git");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_OBJECT_BLOB ;
 int _odb ;
 int _repo ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int foreach_stop_cb ;
 int foreach_stop_cb_positive_ret ;
 int foreach_stop_first_cb ;
 int git_odb_foreach (int ,int ,int*) ;
 int git_odb_free (int ) ;
 int git_odb_write (int *,int ,char*,int ,int ) ;
 int git_repository_free (int ) ;
 int git_repository_init (int *,char*,int) ;
 int git_repository_odb (int *,int ) ;
 int git_repository_open (int *,int ) ;

void test_odb_foreach__interrupt_foreach(void)
{
 int nobj = 0;
 git_oid id;

 cl_git_pass(git_repository_open(&_repo, cl_fixture("testrepo.git")));
 git_repository_odb(&_odb, _repo);

 cl_assert_equal_i(-321, git_odb_foreach(_odb, foreach_stop_cb, &nobj));
 cl_assert(nobj == 1000);

 nobj = 0;

 cl_assert_equal_i(321, git_odb_foreach(_odb, foreach_stop_cb_positive_ret, &nobj));
 cl_assert(nobj == 1000);

 git_odb_free(_odb);
 git_repository_free(_repo);

 cl_git_pass(git_repository_init(&_repo, "onlyloose.git", 1));
 git_repository_odb(&_odb, _repo);

 cl_git_pass(git_odb_write(&id, _odb, "", 0, GIT_OBJECT_BLOB));
 cl_assert_equal_i(-123, git_odb_foreach(_odb, foreach_stop_first_cb, &nobj));
}

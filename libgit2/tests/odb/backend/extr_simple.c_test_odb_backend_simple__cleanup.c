
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION ;
 int _obj ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int git_libgit2_opts (int ,int) ;
 int git_odb_object_free (int ) ;

void test_odb_backend_simple__cleanup(void)
{
 git_odb_object_free(_obj);
 cl_git_sandbox_cleanup();
 cl_git_pass(git_libgit2_opts(GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION, 1));
}

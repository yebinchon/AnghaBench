
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_3__ {char* member_0; char* member_1; int oid; } ;
typedef TYPE_1__ fake_object ;


 int GIT_EAMBIGUOUS ;
 int GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION ;
 int _odb ;
 int _oid ;
 int cl_assert (int ) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_libgit2_opts (int ,int ) ;
 int git_odb_exists_prefix (int *,int ,int *,int) ;
 int git_oid_equal (int *,int *) ;
 int git_oid_fromstr (int *,int ) ;
 int setup_backend (TYPE_1__ const*) ;

void test_odb_backend_simple__exists_with_highly_ambiguous_prefix(void)
{
 const fake_object objs[] = {
  { "1234567890111111111111111111111111111111", "first content" },
  { "1234567890111111111111111111111111111112", "second content" },
  { ((void*)0), ((void*)0) }
 };
 git_oid found;

 setup_backend(objs);

 cl_git_pass(git_oid_fromstr(&_oid, objs[0].oid));
 cl_git_pass(git_libgit2_opts(GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION, 0));
 cl_git_fail_with(GIT_EAMBIGUOUS, git_odb_exists_prefix(&found, _odb, &_oid, 39));
 cl_git_pass(git_odb_exists_prefix(&found, _odb, &_oid, 40));
 cl_assert(git_oid_equal(&found, &_oid));
}

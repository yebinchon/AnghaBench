
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; char* member_1; int content; int oid; } ;
typedef TYPE_1__ fake_object ;


 int GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION ;
 int _obj ;
 int _odb ;
 int _oid ;
 int assert_object_contains (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_libgit2_opts (int ,int ) ;
 int git_odb_read (int *,int ,int *) ;
 int git_oid_fromstr (int *,int ) ;
 int setup_backend (TYPE_1__ const*) ;

void test_odb_backend_simple__read_with_hash_mismatch_succeeds_without_verification(void)
{
 const fake_object objs[] = {
  { "1234567890123456789012345678901234567890", "nonmatching content" },
  { ((void*)0), ((void*)0) }
 };

 setup_backend(objs);
 cl_git_pass(git_oid_fromstr(&_oid, objs[0].oid));

 cl_git_pass(git_libgit2_opts(GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION, 0));
 cl_git_pass(git_odb_read(&_obj, _odb, &_oid));

 assert_object_contains(_obj, objs[0].content);
}

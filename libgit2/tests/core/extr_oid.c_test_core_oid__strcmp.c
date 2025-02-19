
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,scalar_t__) ;
 scalar_t__ git_oid_strcmp (int *,char*) ;
 int id ;
 int idp ;
 char* str_oid ;

void test_core_oid__strcmp(void)
{
 cl_assert_equal_i(0, git_oid_strcmp(&id, str_oid));
 cl_assert(git_oid_strcmp(&id, "deadbeefdeadbeefdeadbeefdeadbeefdeadbeef") < 0);

 cl_assert(git_oid_strcmp(&id, "deadbeef") < 0);
 cl_assert_equal_i(-1, git_oid_strcmp(&id, "I'm not an oid.... :)"));

 cl_assert_equal_i(0, git_oid_strcmp(&idp, "ae90f12eea699729ed0000000000000000000000"));
 cl_assert_equal_i(0, git_oid_strcmp(&idp, "ae90f12eea699729ed"));
 cl_assert(git_oid_strcmp(&idp, "ae90f12eea699729ed1") < 0);
 cl_assert(git_oid_strcmp(&idp, "ae90f12eea699729ec") > 0);
 cl_assert(git_oid_strcmp(&idp, "deadbeefdeadbeefdeadbeefdeadbeefdeadbeef") < 0);

 cl_assert(git_oid_strcmp(&idp, "deadbeef") < 0);
 cl_assert_equal_i(-1, git_oid_strcmp(&idp, "I'm not an oid.... :)"));
}

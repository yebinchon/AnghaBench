
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int cl_assert (char*) ;
 int cl_assert_equal_s (char const*,char*) ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,char const*) ;
 char* git_oid_tostr_s (int *) ;

void test_object_raw_compare__compare_static_oids(void)
{
 const char *exp = "16a0123456789abcdef4b775213c23a8bd74f5e0";
 git_oid in;
 char *out;

 cl_git_pass(git_oid_fromstr(&in, exp));

 out = git_oid_tostr_s(&in);
 cl_assert(out);
 cl_assert_equal_s(exp, out);
}

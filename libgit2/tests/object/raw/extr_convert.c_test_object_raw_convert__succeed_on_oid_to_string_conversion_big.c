
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int big ;


 int GIT_OID_HEXSZ ;
 int cl_assert (int) ;
 int cl_assert_equal_s (char const*,char*) ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,char const*) ;
 char* git_oid_tostr (char*,int,int *) ;

void test_object_raw_convert__succeed_on_oid_to_string_conversion_big(void)
{
 const char *exp = "16a0123456789abcdef4b775213c23a8bd74f5e0";
 git_oid in;
 char big[GIT_OID_HEXSZ + 1 + 3];
 char *str;

 cl_git_pass(git_oid_fromstr(&in, exp));


 big[GIT_OID_HEXSZ+0] = 'W';
 big[GIT_OID_HEXSZ+1] = 'X';
 big[GIT_OID_HEXSZ+2] = 'Y';
 big[GIT_OID_HEXSZ+3] = 'Z';


 str = git_oid_tostr(big, sizeof(big), &in);
 cl_assert(str && str == big && *(str+GIT_OID_HEXSZ) == '\0');
 cl_assert_equal_s(exp, big);


 cl_assert(str && str == big && *(str+GIT_OID_HEXSZ+1) == 'X');
 cl_assert(str && str == big && *(str+GIT_OID_HEXSZ+2) == 'Y');
 cl_assert(str && str == big && *(str+GIT_OID_HEXSZ+3) == 'Z');
}

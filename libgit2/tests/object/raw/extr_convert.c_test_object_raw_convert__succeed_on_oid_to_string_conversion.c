
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int out ;
typedef int git_oid ;


 int GIT_OID_HEXSZ ;
 int cl_assert (int) ;
 int cl_assert_equal_s (char const*,char*) ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,char const*) ;
 char* git_oid_tostr (char*,int,int *) ;
 int strncmp (char const*,char*,int) ;

void test_object_raw_convert__succeed_on_oid_to_string_conversion(void)
{
 const char *exp = "16a0123456789abcdef4b775213c23a8bd74f5e0";
 git_oid in;
 char out[GIT_OID_HEXSZ + 1];
 char *str;
 int i;

 cl_git_pass(git_oid_fromstr(&in, exp));


 str = git_oid_tostr(((void*)0), sizeof(out), &in);
 cl_assert(str && *str == '\0' && str != out);


 str = git_oid_tostr(out, 0, &in);
 cl_assert(str && *str == '\0' && str != out);


 str = git_oid_tostr(out, sizeof(out), ((void*)0));
 cl_assert(str && *str == '\0' && str == out);


 str = git_oid_tostr(out, 1, &in);
 cl_assert(str && *str == '\0' && str == out);

 for (i = 1; i < GIT_OID_HEXSZ; i++) {
  out[i+1] = 'Z';
  str = git_oid_tostr(out, i+1, &in);

  cl_assert(str && str == out);

  cl_assert(*(str+i) == '\0');

  cl_assert(*(str+(i+1)) == 'Z');

  cl_git_pass(strncmp(exp, out, i));
 }


 str = git_oid_tostr(out, sizeof(out), &in);
 cl_assert(str && str == out && *(str+GIT_OID_HEXSZ) == '\0');
 cl_assert_equal_s(exp, out);
}

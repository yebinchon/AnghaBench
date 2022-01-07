
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_OID_HEXSZ ;
 int cl_assert (int) ;
 int cl_assert_equal_s (char const*,char*) ;
 int cl_git_pass (int ) ;
 int git_oid_fmt (char*,int *) ;
 int git_oid_fromstr (int *,char const*) ;

void test_object_raw_compare__compare_fmt_oids(void)
{
 const char *exp = "16a0123456789abcdef4b775213c23a8bd74f5e0";
 git_oid in;
 char out[GIT_OID_HEXSZ + 1];

 cl_git_pass(git_oid_fromstr(&in, exp));


 out[GIT_OID_HEXSZ] = 'Z';
 git_oid_fmt(out, &in);
 cl_assert(out[GIT_OID_HEXSZ] == 'Z');


 out[GIT_OID_HEXSZ] = '\0';
 cl_assert_equal_s(exp, out);
}

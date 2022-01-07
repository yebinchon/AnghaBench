
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_OID_HEXSZ ;
 int cl_assert (int) ;
 int cl_assert_equal_s (char const*,char*) ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,char const*) ;
 int git_oid_pathfmt (char*,int *) ;

void test_object_raw_compare__compare_pathfmt_oids(void)
{
 const char *exp1 = "16a0123456789abcdef4b775213c23a8bd74f5e0";
 const char *exp2 = "16/a0123456789abcdef4b775213c23a8bd74f5e0";
 git_oid in;
 char out[GIT_OID_HEXSZ + 2];

 cl_git_pass(git_oid_fromstr(&in, exp1));


 out[GIT_OID_HEXSZ + 1] = 'Z';
 git_oid_pathfmt(out, &in);
 cl_assert(out[GIT_OID_HEXSZ + 1] == 'Z');


 out[GIT_OID_HEXSZ + 1] = '\0';
 cl_assert_equal_s(exp2, out);
}

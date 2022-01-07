
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer_out ;


 int GIT_REFNAME_MAX ;
 int cl_assert_equal_s (char const*,char*) ;
 int cl_git_pass (int ) ;
 int git_reference_normalize_name (char*,int,char const*,unsigned int) ;

__attribute__((used)) static void ensure_refname_normalized(
 unsigned int flags,
 const char *input_refname,
 const char *expected_refname)
{
 char buffer_out[GIT_REFNAME_MAX];

 cl_git_pass(git_reference_normalize_name(buffer_out, sizeof(buffer_out), input_refname, flags));

 cl_assert_equal_s(expected_refname, buffer_out);
}

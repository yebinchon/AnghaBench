
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer_out ;


 int GIT_EINVALIDSPEC ;
 int GIT_REFNAME_MAX ;
 int cl_assert_equal_i (int ,int ) ;
 int git_reference_normalize_name (char*,int,char const*,unsigned int) ;

__attribute__((used)) static void ensure_refname_invalid(unsigned int flags, const char *input_refname)
{
 char buffer_out[GIT_REFNAME_MAX];

 cl_assert_equal_i(
  GIT_EINVALIDSPEC,
  git_reference_normalize_name(buffer_out, sizeof(buffer_out), input_refname, flags));
}

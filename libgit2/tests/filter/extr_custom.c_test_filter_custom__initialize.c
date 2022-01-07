
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int register_custom_filters () ;

void test_filter_custom__initialize(void)
{
 register_custom_filters();

 g_repo = cl_git_sandbox_init("empty_standard_repo");

 cl_git_mkfile(
  "empty_standard_repo/.gitattributes",
  "hero* bitflip reverse\n"
  "herofile text\n"
  "heroflip -reverse binary\n"
  "villain erroneous\n"
  "*.bin binary\n");
}

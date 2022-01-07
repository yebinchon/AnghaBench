
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_s (char const*,char*) ;
 int cl_git_pass (int ) ;
 int git_mailmap_resolve (char const**,char const**,int ,char*,char*) ;
 int mailmap ;

void test_mailmap_basic__name_matching(void)
{
 const char *name;
 const char *email;
 cl_git_pass(git_mailmap_resolve(
  &name, &email, mailmap, "Other Name", "yetanotheremail@foo.com"));

 cl_assert_equal_s(name, "Other Name");
 cl_assert_equal_s(email, "email@foo.com");

 cl_git_pass(git_mailmap_resolve(
  &name, &email, mailmap,
  "Other Name That Doesn't Match", "yetanotheremail@foo.com"));
 cl_assert_equal_s(name, "Other Name That Doesn't Match");
 cl_assert_equal_s(email, "yetanotheremail@foo.com");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_remote ;


 size_t ARRAY_SIZE (char const**) ;
 int GIT_EINVALIDSPEC ;
 int TEST_URL ;
 int _repo ;
 int cl_assert_equal_p (int *,int *) ;
 int cl_git_fail_with (int ,int ) ;
 int git_remote_create (int **,int ,char const*,int ) ;

void test_remote_create__named_fail_on_invalid_name(void)
{
 const char *names[] = {
  ((void*)0),
  "Inv@{id",
  "",
  "/",
  "//",
  ".lock",
  "a.lock",
 };
 size_t i;

 for (i = 0; i < ARRAY_SIZE(names); i++) {
  git_remote *remote = ((void*)0);
  cl_git_fail_with(GIT_EINVALIDSPEC, git_remote_create(&remote, _repo, names[i], TEST_URL));
  cl_assert_equal_p(remote, ((void*)0));
 }
}

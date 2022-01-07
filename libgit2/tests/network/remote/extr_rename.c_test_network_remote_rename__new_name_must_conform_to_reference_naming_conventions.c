
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ git_strarray ;


 int GIT_EINVALIDSPEC ;
 int _remote_name ;
 int _repo ;
 int cl_assert_equal_i (int ,int ) ;
 int git_remote_rename (TYPE_1__*,int ,int ,char*) ;

void test_network_remote_rename__new_name_must_conform_to_reference_naming_conventions(void)
{
 git_strarray problems = {0};

 cl_assert_equal_i(
  GIT_EINVALIDSPEC,
  git_remote_rename(&problems, _repo, _remote_name, "new@{name"));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ git_strarray ;


 int GIT_ENOTFOUND ;
 int _repo ;
 int cl_assert_equal_i (int ,int) ;
 int git_remote_rename (TYPE_1__*,int ,char*,char*) ;

void test_network_remote_rename__nonexistent_returns_enotfound(void)
{
 git_strarray problems = {0};

 int err = git_remote_rename(&problems, _repo, "nonexistent", "renamed");

 cl_assert_equal_i(GIT_ENOTFOUND, err);
}

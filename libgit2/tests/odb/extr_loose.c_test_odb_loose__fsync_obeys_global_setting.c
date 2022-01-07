
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OPT_ENABLE_FSYNC_GITDIR ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_libgit2_opts (int ,int) ;
 scalar_t__ p_fsync__cnt ;
 int write_object_to_loose_odb (int ) ;

void test_odb_loose__fsync_obeys_global_setting(void)
{
 cl_git_pass(git_libgit2_opts(GIT_OPT_ENABLE_FSYNC_GITDIR, 1));
 write_object_to_loose_odb(0);
 cl_assert(p_fsync__cnt > 0);
}

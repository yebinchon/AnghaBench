
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _packbuilder ;
 int _repo ;
 int cl_assert_equal_sz (int ,scalar_t__) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int expected_fsyncs ;
 int git_packbuilder_write (int ,char*,int,int *,int *) ;
 scalar_t__ p_fsync__cnt ;
 int seed_packbuilder () ;

void test_pack_packbuilder__fsync_repo_setting(void)
{
 cl_repo_set_bool(_repo, "core.fsyncObjectFiles", 1);
 p_fsync__cnt = 0;
 seed_packbuilder();
 git_packbuilder_write(_packbuilder, ".", 0666, ((void*)0), ((void*)0));
 cl_assert_equal_sz(expected_fsyncs, p_fsync__cnt);
}

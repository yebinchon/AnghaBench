
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _packbuilder ;
 int cl_assert_equal_sz (int ,int ) ;
 int git_packbuilder_write (int ,char*,int,int *,int *) ;
 int p_fsync__cnt ;
 int seed_packbuilder () ;

void test_pack_packbuilder__does_not_fsync_by_default(void)
{
 seed_packbuilder();
 git_packbuilder_write(_packbuilder, ".", 0666, ((void*)0), ((void*)0));
 cl_assert_equal_sz(0, p_fsync__cnt);
}

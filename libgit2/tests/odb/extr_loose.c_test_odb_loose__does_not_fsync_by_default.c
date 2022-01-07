
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_sz (int ,int ) ;
 int p_fsync__cnt ;
 int write_object_to_loose_odb (int ) ;

void test_odb_loose__does_not_fsync_by_default(void)
{
 write_object_to_loose_odb(0);
 cl_assert_equal_sz(0, p_fsync__cnt);
}

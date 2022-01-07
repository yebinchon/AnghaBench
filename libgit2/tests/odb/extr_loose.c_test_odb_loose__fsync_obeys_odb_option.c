
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int) ;
 scalar_t__ p_fsync__cnt ;
 int write_object_to_loose_odb (int) ;

void test_odb_loose__fsync_obeys_odb_option(void)
{
 write_object_to_loose_odb(1);
 cl_assert(p_fsync__cnt > 0);
}

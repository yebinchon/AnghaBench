
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_i (int ,size_t) ;
 int count_fsyncs (size_t*,size_t*) ;

void test_refs_create__does_not_fsync_by_default(void)
{
 size_t create_count, compress_count;
 count_fsyncs(&create_count, &compress_count);

 cl_assert_equal_i(0, create_count);
 cl_assert_equal_i(0, compress_count);
}

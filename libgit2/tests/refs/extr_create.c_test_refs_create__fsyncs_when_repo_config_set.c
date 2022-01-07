
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_i (int ,size_t) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int count_fsyncs (size_t*,size_t*) ;
 int expected_fsyncs_compress ;
 int expected_fsyncs_create ;
 int g_repo ;

void test_refs_create__fsyncs_when_repo_config_set(void)
{
 size_t create_count, compress_count;

 cl_repo_set_bool(g_repo, "core.fsyncObjectFiles", 1);

 count_fsyncs(&create_count, &compress_count);

 cl_assert_equal_i(expected_fsyncs_create, create_count);
 cl_assert_equal_i(expected_fsyncs_compress, compress_count);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OPT_ENABLE_FSYNC_GITDIR ;
 int cl_assert_equal_i (int ,size_t) ;
 int cl_git_pass (int ) ;
 int count_fsyncs (size_t*,size_t*) ;
 int expected_fsyncs_compress ;
 int expected_fsyncs_create ;
 int git_libgit2_opts (int ,int) ;

void test_refs_create__fsyncs_when_global_opt_set(void)
{
 size_t create_count, compress_count;

 cl_git_pass(git_libgit2_opts(GIT_OPT_ENABLE_FSYNC_GITDIR, 1));
 count_fsyncs(&create_count, &compress_count);

 cl_assert_equal_i(expected_fsyncs_create, create_count);
 cl_assert_equal_i(expected_fsyncs_compress, compress_count);
}

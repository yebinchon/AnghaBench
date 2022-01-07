
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OPT_DISABLE_PACK_KEEP_FILE_CHECKS ;
 int assert (int) ;
 int cl_git_pass (int ) ;
 int git_disable_pack_keep_file_checks ;
 int git_libgit2_opts (int ,int) ;

void test_pack_packbuilder__keep_file_check(void)
{
 assert(!git_disable_pack_keep_file_checks);
 cl_git_pass(git_libgit2_opts(GIT_OPT_DISABLE_PACK_KEEP_FILE_CHECKS, 1));
 assert(git_disable_pack_keep_file_checks);
}

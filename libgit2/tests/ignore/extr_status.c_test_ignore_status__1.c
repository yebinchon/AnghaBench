
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (char*) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_attr_cache_flush (int ) ;
 int refute_is_ignored (char*) ;

void test_ignore_status__1(void)
{
 g_repo = cl_git_sandbox_init("attr");

 cl_git_rewritefile("attr/.gitignore", "/*.txt\n/dir/\n");
 git_attr_cache_flush(g_repo);

 assert_is_ignored("root_test4.txt");
 refute_is_ignored("sub/subdir_test2.txt");
 assert_is_ignored("dir");
 assert_is_ignored("dir/");
 refute_is_ignored("sub/dir");
 refute_is_ignored("sub/dir/");
}

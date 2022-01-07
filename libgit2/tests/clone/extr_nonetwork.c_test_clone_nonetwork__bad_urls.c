
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bare; } ;


 int cl_assert (int) ;
 int cl_git_fail (int ) ;
 TYPE_1__ g_options ;
 int g_repo ;
 int git_clone (int *,char*,char*,TYPE_1__*) ;
 int git_path_exists (char*) ;

void test_clone_nonetwork__bad_urls(void)
{

 cl_git_fail(git_clone(&g_repo, "not_a_repo", "./foo", &g_options));
 cl_assert(!git_path_exists("./foo"));
 g_options.bare = 1;
 cl_git_fail(git_clone(&g_repo, "not_a_repo", "./foo", &g_options));
 cl_assert(!git_path_exists("./foo"));

 cl_git_fail(git_clone(&g_repo, "git://example.com:asdf", "./foo", &g_options));
 cl_git_fail(git_clone(&g_repo, "https://example.com:asdf/foo", "./foo", &g_options));
 cl_git_fail(git_clone(&g_repo, "git://github.com/git://github.com/foo/bar.git.git",
    "./foo", &g_options));
 cl_git_fail(git_clone(&g_repo, "arrbee:my/bad:password@github.com:1111/strange:words.git",
    "./foo", &g_options));
}

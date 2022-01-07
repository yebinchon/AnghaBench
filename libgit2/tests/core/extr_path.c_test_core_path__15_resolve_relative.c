
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int assert_resolve_relative (int *,char*,char*) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (int *) ;
 int git_buf_sets (int *,char*) ;
 int git_path_resolve_relative (int *,int ) ;

void test_core_path__15_resolve_relative(void)
{
 git_buf buf = GIT_BUF_INIT;

 assert_resolve_relative(&buf, "", "");
 assert_resolve_relative(&buf, "", ".");
 assert_resolve_relative(&buf, "", "./");
 assert_resolve_relative(&buf, "..", "..");
 assert_resolve_relative(&buf, "../", "../");
 assert_resolve_relative(&buf, "..", "./..");
 assert_resolve_relative(&buf, "../", "./../");
 assert_resolve_relative(&buf, "../", "../.");
 assert_resolve_relative(&buf, "../", ".././");
 assert_resolve_relative(&buf, "../..", "../..");
 assert_resolve_relative(&buf, "../../", "../../");

 assert_resolve_relative(&buf, "/", "/");
 assert_resolve_relative(&buf, "/", "/.");

 assert_resolve_relative(&buf, "", "a/..");
 assert_resolve_relative(&buf, "", "a/../");
 assert_resolve_relative(&buf, "", "a/../.");

 assert_resolve_relative(&buf, "/a", "/a");
 assert_resolve_relative(&buf, "/a/", "/a/.");
 assert_resolve_relative(&buf, "/", "/a/../");
 assert_resolve_relative(&buf, "/", "/a/../.");
 assert_resolve_relative(&buf, "/", "/a/.././");

 assert_resolve_relative(&buf, "a", "a");
 assert_resolve_relative(&buf, "a/", "a/");
 assert_resolve_relative(&buf, "a/", "a/.");
 assert_resolve_relative(&buf, "a/", "a/./");

 assert_resolve_relative(&buf, "a/b", "a//b");
 assert_resolve_relative(&buf, "a/b/c", "a/b/c");
 assert_resolve_relative(&buf, "b/c", "./b/c");
 assert_resolve_relative(&buf, "a/c", "a/./c");
 assert_resolve_relative(&buf, "a/b/", "a/b/.");

 assert_resolve_relative(&buf, "/a/b/c", "///a/b/c");
 assert_resolve_relative(&buf, "/", "////");
 assert_resolve_relative(&buf, "/a", "///a");
 assert_resolve_relative(&buf, "/", "///.");
 assert_resolve_relative(&buf, "/", "///a/..");

 assert_resolve_relative(&buf, "../../path", "../../test//../././path");
 assert_resolve_relative(&buf, "../d", "a/b/../../../c/../d");

 cl_git_pass(git_buf_sets(&buf, "/.."));
 cl_git_fail(git_path_resolve_relative(&buf, 0));

 cl_git_pass(git_buf_sets(&buf, "/./.."));
 cl_git_fail(git_path_resolve_relative(&buf, 0));

 cl_git_pass(git_buf_sets(&buf, "/.//.."));
 cl_git_fail(git_path_resolve_relative(&buf, 0));

 cl_git_pass(git_buf_sets(&buf, "/../."));
 cl_git_fail(git_path_resolve_relative(&buf, 0));

 cl_git_pass(git_buf_sets(&buf, "/../.././../a"));
 cl_git_fail(git_path_resolve_relative(&buf, 0));

 cl_git_pass(git_buf_sets(&buf, "////.."));
 cl_git_fail(git_path_resolve_relative(&buf, 0));
 assert_resolve_relative(&buf, "/a/b/c", "//a/b/c");
 assert_resolve_relative(&buf, "/a/", "//a/b/..");
 assert_resolve_relative(&buf, "/a/b/c", "//a/Q/../b/x/y/../../c");
 assert_resolve_relative(&buf, "/", "//a/b/../..");


 git_buf_dispose(&buf);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (int,char*) ;
 int cl_git_rewritefile (char*,char*) ;

void test_ignore_path__globs_and_path_delimiters(void)
{
 cl_git_rewritefile("attr/.gitignore", "foo/bar/**");
 assert_is_ignored(1, "foo/bar/baz");
 assert_is_ignored(1, "foo/bar/baz/quux");

 cl_git_rewritefile("attr/.gitignore", "_*/");
 assert_is_ignored(1, "sub/_test/a/file");
 assert_is_ignored(0, "test_folder/file");
 assert_is_ignored(1, "_test/file");
 assert_is_ignored(1, "_test/a/file");

 cl_git_rewritefile("attr/.gitignore", "**/_*/");
 assert_is_ignored(1, "sub/_test/a/file");
 assert_is_ignored(0, "test_folder/file");
 assert_is_ignored(1, "_test/file");
 assert_is_ignored(1, "_test/a/file");

 cl_git_rewritefile("attr/.gitignore", "**/_*/foo/bar/*ux");

 assert_is_ignored(1, "sub/_test/foo/bar/qux/file");
 assert_is_ignored(1, "_test/foo/bar/qux/file");
 assert_is_ignored(1, "_test/foo/bar/crux/file");
 assert_is_ignored(0, "_test/foo/bar/code/file");
}

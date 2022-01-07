
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_common_dirlen (int,char*,char*) ;

void test_core_path__16_resolve_relative(void)
{
 assert_common_dirlen(0, "", "");
 assert_common_dirlen(0, "", "bar.txt");
 assert_common_dirlen(0, "foo.txt", "bar.txt");
 assert_common_dirlen(0, "foo.txt", "");
 assert_common_dirlen(0, "foo/bar.txt", "bar/foo.txt");
 assert_common_dirlen(0, "foo/bar.txt", "../foo.txt");

 assert_common_dirlen(1, "/one.txt", "/two.txt");
 assert_common_dirlen(4, "foo/one.txt", "foo/two.txt");
 assert_common_dirlen(5, "/foo/one.txt", "/foo/two.txt");

 assert_common_dirlen(6, "a/b/c/foo.txt", "a/b/c/d/e/bar.txt");
 assert_common_dirlen(7, "/a/b/c/foo.txt", "/a/b/c/d/e/bar.txt");
}

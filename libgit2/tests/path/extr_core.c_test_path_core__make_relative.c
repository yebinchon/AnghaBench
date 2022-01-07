
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ENOTFOUND ;
 int test_make_relative (char*,char*,char*,int ) ;

void test_path_core__make_relative(void)
{
 test_make_relative("foo.c", "/path/to/foo.c", "/path/to", 0);
 test_make_relative("bar/foo.c", "/path/to/bar/foo.c", "/path/to", 0);
 test_make_relative("foo.c", "/path/to/foo.c", "/path/to/", 0);

 test_make_relative("", "/path/to", "/path/to", 0);
 test_make_relative("", "/path/to", "/path/to/", 0);

 test_make_relative("../", "/path/to", "/path/to/foo", 0);

 test_make_relative("../foo.c", "/path/to/foo.c", "/path/to/bar", 0);
 test_make_relative("../bar/foo.c", "/path/to/bar/foo.c", "/path/to/baz", 0);

 test_make_relative("../../foo.c", "/path/to/foo.c", "/path/to/foo/bar", 0);
 test_make_relative("../../foo/bar.c", "/path/to/foo/bar.c", "/path/to/bar/foo", 0);

 test_make_relative("../../foo.c", "/foo.c", "/bar/foo", 0);

 test_make_relative("foo.c", "/path/to/foo.c", "/path/to/", 0);
 test_make_relative("../foo.c", "/path/to/foo.c", "/path/to/bar/", 0);

 test_make_relative("foo.c", "d:/path/to/foo.c", "d:/path/to", 0);

 test_make_relative("../foo", "/foo", "/bar", 0);
 test_make_relative("path/to/foo.c", "/path/to/foo.c", "/", 0);
 test_make_relative("../foo", "path/to/foo", "path/to/bar", 0);

 test_make_relative("/path/to/foo.c", "/path/to/foo.c", "d:/path/to", GIT_ENOTFOUND);
 test_make_relative("d:/path/to/foo.c", "d:/path/to/foo.c", "/path/to", GIT_ENOTFOUND);

 test_make_relative("/path/to/foo.c", "/path/to/foo.c", "not-a-rooted-path", GIT_ENOTFOUND);
 test_make_relative("not-a-rooted-path", "not-a-rooted-path", "/path/to", GIT_ENOTFOUND);

 test_make_relative("/path", "/path", "pathtofoo", GIT_ENOTFOUND);
 test_make_relative("path", "path", "pathtofoo", GIT_ENOTFOUND);
}

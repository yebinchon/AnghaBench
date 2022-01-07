
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int git_buf_dispose (int *) ;
 int test_join_unrooted (char*,int,char*,char*) ;

void test_path_core__join_unrooted(void)
{
 git_buf out = GIT_BUF_INIT;

 test_join_unrooted("foo", 0, "foo", ((void*)0));
 test_join_unrooted("foo/bar", 0, "foo/bar", ((void*)0));


 test_join_unrooted("/foo/bar", 4, "bar", "/foo");
 test_join_unrooted("/foo/bar/foobar", 4, "bar/foobar", "/foo");
 test_join_unrooted("c:/foo/bar/foobar", 6, "bar/foobar", "c:/foo");
 test_join_unrooted("c:/foo/bar/foobar", 10, "foobar", "c:/foo/bar");


 test_join_unrooted("/foo", 0, "/foo", "/asdf");
 test_join_unrooted("/foo/bar", 0, "/foo/bar", "/asdf");


 test_join_unrooted("c:/foo", 2, "c:/foo", "c:/asdf");
 test_join_unrooted("c:/foo/bar", 2, "c:/foo/bar", "c:/asdf");







 test_join_unrooted("/foo/\\bar", 4, "\\bar", "/foo");
 test_join_unrooted("c:/foo/\\bar", 7, "\\bar", "c:/foo/");



 test_join_unrooted("c:/foo/bar/foobar", 6, "c:/foo/bar/foobar", "c:/foo");
 test_join_unrooted("c:/foo/bar/foobar", 10, "c:/foo/bar/foobar", "c:/foo/bar");


 test_join_unrooted("c:/foo/bar/foobar", 6, "c:/foo/bar/foobar", "c:/foo/");

 git_buf_dispose(&out);
}

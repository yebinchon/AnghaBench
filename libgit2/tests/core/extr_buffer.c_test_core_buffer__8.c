
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int check_joinbuf_2 (char*,char*,char*) ;
 int check_joinbuf_n_2 (char*,char*,char*) ;
 int check_joinbuf_n_4 (char*,char*,char*,char*,char*) ;
 int check_joinbuf_overlapped (char*,int,char*,char*) ;
 int cl_assert (int) ;
 int cl_assert_equal_s (char*,int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_join_n (int *,char,int,char*) ;
 scalar_t__ git_buf_oom (int *) ;

void test_core_buffer__8(void)
{
 git_buf a = GIT_BUF_INIT;

 git_buf_join_n(&a, '/', 1, "foo");
 cl_assert(git_buf_oom(&a) == 0);
 cl_assert_equal_s("foo", git_buf_cstr(&a));

 git_buf_join_n(&a, '/', 1, "bar");
 cl_assert(git_buf_oom(&a) == 0);
 cl_assert_equal_s("foo/bar", git_buf_cstr(&a));

 git_buf_join_n(&a, '/', 1, "baz");
 cl_assert(git_buf_oom(&a) == 0);
 cl_assert_equal_s("foo/bar/baz", git_buf_cstr(&a));

 git_buf_dispose(&a);

 check_joinbuf_2(((void*)0), "", "");
 check_joinbuf_2(((void*)0), "a", "a");
 check_joinbuf_2(((void*)0), "/a", "/a");
 check_joinbuf_2("", "", "");
 check_joinbuf_2("", "a", "a");
 check_joinbuf_2("", "/a", "/a");
 check_joinbuf_2("a", "", "a/");
 check_joinbuf_2("a", "/", "a/");
 check_joinbuf_2("a", "b", "a/b");
 check_joinbuf_2("/", "a", "/a");
 check_joinbuf_2("/", "", "/");
 check_joinbuf_2("/a", "/b", "/a/b");
 check_joinbuf_2("/a", "/b/", "/a/b/");
 check_joinbuf_2("/a/", "b/", "/a/b/");
 check_joinbuf_2("/a/", "/b/", "/a/b/");
 check_joinbuf_2("/a/", "//b/", "/a/b/");
 check_joinbuf_2("/abcd", "/defg", "/abcd/defg");
 check_joinbuf_2("/abcd", "/defg/", "/abcd/defg/");
 check_joinbuf_2("/abcd/", "defg/", "/abcd/defg/");
 check_joinbuf_2("/abcd/", "/defg/", "/abcd/defg/");

 check_joinbuf_overlapped("abcd", 0, "efg", "abcd/efg");
 check_joinbuf_overlapped("abcd", 1, "efg", "bcd/efg");
 check_joinbuf_overlapped("abcd", 2, "efg", "cd/efg");
 check_joinbuf_overlapped("abcd", 3, "efg", "d/efg");
 check_joinbuf_overlapped("abcd", 4, "efg", "efg");
 check_joinbuf_overlapped("abc/", 2, "efg", "c/efg");
 check_joinbuf_overlapped("abc/", 3, "efg", "/efg");
 check_joinbuf_overlapped("abc/", 4, "efg", "efg");
 check_joinbuf_overlapped("abcd", 3, "", "d/");
 check_joinbuf_overlapped("abcd", 4, "", "");
 check_joinbuf_overlapped("abc/", 2, "", "c/");
 check_joinbuf_overlapped("abc/", 3, "", "/");
 check_joinbuf_overlapped("abc/", 4, "", "");

 check_joinbuf_n_2("", "", "");
 check_joinbuf_n_2("", "a", "a");
 check_joinbuf_n_2("", "/a", "/a");
 check_joinbuf_n_2("a", "", "a/");
 check_joinbuf_n_2("a", "/", "a/");
 check_joinbuf_n_2("a", "b", "a/b");
 check_joinbuf_n_2("/", "a", "/a");
 check_joinbuf_n_2("/", "", "/");
 check_joinbuf_n_2("/a", "/b", "/a/b");
 check_joinbuf_n_2("/a", "/b/", "/a/b/");
 check_joinbuf_n_2("/a/", "b/", "/a/b/");
 check_joinbuf_n_2("/a/", "/b/", "/a/b/");
 check_joinbuf_n_2("/abcd", "/defg", "/abcd/defg");
 check_joinbuf_n_2("/abcd", "/defg/", "/abcd/defg/");
 check_joinbuf_n_2("/abcd/", "defg/", "/abcd/defg/");
 check_joinbuf_n_2("/abcd/", "/defg/", "/abcd/defg/");

 check_joinbuf_n_4("", "", "", "", "");
 check_joinbuf_n_4("", "a", "", "", "a;");
 check_joinbuf_n_4("a", "", "", "", "a;");
 check_joinbuf_n_4("", "", "", "a", "a");
 check_joinbuf_n_4("a", "b", "", ";c;d;", "a;b;c;d;");
 check_joinbuf_n_4("a", "b", "", ";c;d", "a;b;c;d");
 check_joinbuf_n_4("abcd", "efgh", "ijkl", "mnop", "abcd;efgh;ijkl;mnop");
 check_joinbuf_n_4("abcd;", "efgh;", "ijkl;", "mnop;", "abcd;efgh;ijkl;mnop;");
 check_joinbuf_n_4(";abcd;", ";efgh;", ";ijkl;", ";mnop;", ";abcd;efgh;ijkl;mnop;");
}

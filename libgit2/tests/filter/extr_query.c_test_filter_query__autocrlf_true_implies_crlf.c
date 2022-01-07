
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_i (int,int ) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int filter_for (char*,char*) ;
 int g_repo ;

void test_filter_query__autocrlf_true_implies_crlf(void)
{
 cl_repo_set_bool(g_repo, "core.autocrlf", 1);
 cl_assert_equal_i(1, filter_for("not_in_gitattributes", "crlf"));
 cl_assert_equal_i(1, filter_for("foo.txt", "crlf"));
 cl_assert_equal_i(0, filter_for("foo.bin", "crlf"));
 cl_assert_equal_i(1, filter_for("foo.lf", "crlf"));

 cl_repo_set_bool(g_repo, "core.autocrlf", 0);
 cl_assert_equal_i(0, filter_for("not_in_gitattributes", "crlf"));
 cl_assert_equal_i(1, filter_for("foo.txt", "crlf"));
 cl_assert_equal_i(0, filter_for("foo.bin", "crlf"));
 cl_assert_equal_i(1, filter_for("foo.lf", "crlf"));
}

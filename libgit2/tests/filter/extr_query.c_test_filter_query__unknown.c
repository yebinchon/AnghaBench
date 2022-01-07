
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_i (int,int ) ;
 int filter_for (char*,char*) ;

void test_filter_query__unknown(void)
{
 cl_assert_equal_i(1, filter_for("foo.custom", "crlf"));
 cl_assert_equal_i(1, filter_for("foo.custom", "ident"));
 cl_assert_equal_i(0, filter_for("foo.custom", "custom"));
}

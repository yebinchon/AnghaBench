
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect_unquote_pass (char*,char*) ;

void test_buf_quote__unquote_succeeds(void)
{
 expect_unquote_pass("", "\"\"");
 expect_unquote_pass(" ", "\" \"");
 expect_unquote_pass("foo", "\"foo\"");
 expect_unquote_pass("foo bar", "\"foo bar\"");
 expect_unquote_pass("foo\"bar", "\"foo\\\"bar\"");
 expect_unquote_pass("foo\\bar", "\"foo\\\\bar\"");
 expect_unquote_pass("foo\tbar", "\"foo\\tbar\"");
 expect_unquote_pass("\vfoo\tbar\n", "\"\\vfoo\\tbar\\n\"");
 expect_unquote_pass("foo\nbar", "\"foo\\012bar\"");
 expect_unquote_pass("foo\r\nbar", "\"foo\\015\\012bar\"");
 expect_unquote_pass("foo\r\nbar", "\"\\146\\157\\157\\015\\012\\142\\141\\162\"");
 expect_unquote_pass("newline: \n", "\"newline: \\012\"");
 expect_unquote_pass("0xff: \377", "\"0xff: \\377\"");
}

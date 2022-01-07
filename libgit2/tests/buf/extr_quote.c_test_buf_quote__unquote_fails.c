
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect_unquote_fail (char*) ;

void test_buf_quote__unquote_fails(void)
{
 expect_unquote_fail("no quotes at all");
 expect_unquote_fail("\"no trailing quote");
 expect_unquote_fail("no leading quote\"");
 expect_unquote_fail("\"invalid \\z escape char\"");
 expect_unquote_fail("\"\\q invalid escape char\"");
 expect_unquote_fail("\"invalid escape char \\p\"");
 expect_unquote_fail("\"invalid \\1 escape char \"");
 expect_unquote_fail("\"invalid \\14 escape char \"");
 expect_unquote_fail("\"invalid \\280 escape char\"");
 expect_unquote_fail("\"invalid \\378 escape char\"");
 expect_unquote_fail("\"invalid \\380 escape char\"");
 expect_unquote_fail("\"invalid \\411 escape char\"");
 expect_unquote_fail("\"truncated escape char \\\"");
 expect_unquote_fail("\"truncated escape char \\0\"");
 expect_unquote_fail("\"truncated escape char \\01\"");
}

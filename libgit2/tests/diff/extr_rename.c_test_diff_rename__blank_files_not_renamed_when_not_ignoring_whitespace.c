
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_DIFF_FIND_DONT_IGNORE_WHITESPACE ;
 int expect_files_not_renamed (char*,char*,int ) ;

void test_diff_rename__blank_files_not_renamed_when_not_ignoring_whitespace(void)
{
 expect_files_not_renamed("", "\r\n\r\n\r\n", GIT_DIFF_FIND_DONT_IGNORE_WHITESPACE);
 expect_files_not_renamed("", "\n\n\n\n", GIT_DIFF_FIND_DONT_IGNORE_WHITESPACE);
 expect_files_not_renamed("\n\n\n\n", "\r\n\r\n\r\n", GIT_DIFF_FIND_DONT_IGNORE_WHITESPACE);
}

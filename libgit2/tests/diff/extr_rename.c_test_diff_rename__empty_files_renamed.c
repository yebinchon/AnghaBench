
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_DIFF_FIND_DONT_IGNORE_WHITESPACE ;
 int GIT_DIFF_FIND_IGNORE_WHITESPACE ;
 int expect_files_renamed (char*,char*,int ) ;

void test_diff_rename__empty_files_renamed(void)
{

 expect_files_renamed("", "", GIT_DIFF_FIND_DONT_IGNORE_WHITESPACE);
 expect_files_renamed("", "", GIT_DIFF_FIND_IGNORE_WHITESPACE);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; char* member_1; } ;
typedef TYPE_1__ notify_expected ;


 int test_notify (char**,int,TYPE_1__*,int) ;

void test_diff_notify__notify_single_pathspec(void)
{
 char *searched_pathspecs[] = {
  "*_deleted",
 };
 notify_expected expected_matched_pathspecs[] = {
  { "file_deleted", "*_deleted" },
  { "staged_changes_file_deleted", "*_deleted" },
  { ((void*)0), ((void*)0) }
 };

 test_notify(searched_pathspecs, 1, expected_matched_pathspecs, 2);
}

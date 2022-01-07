
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; char* member_1; } ;
typedef TYPE_1__ notify_expected ;


 int test_notify (char**,int,TYPE_1__*,int) ;

void test_diff_notify__notify_catchall(void)
{
 char *searched_pathspecs[] = {
  "*",
 };
 notify_expected expected_matched_pathspecs[] = {
  { "file_deleted", "*" },
  { "ignored_file", "*" },
  { "modified_file", "*" },
  { "new_file", "*" },
  { "\xe8\xbf\x99", "*" },
  { "staged_changes_file_deleted", "*" },
  { "staged_changes_modified_file", "*" },
  { "staged_delete_modified_file", "*" },
  { "staged_new_file_deleted_file", "*" },
  { "staged_new_file_modified_file", "*" },
  { "subdir/deleted_file", "*" },
  { "subdir/modified_file", "*" },
  { "subdir/new_file", "*" },
  { ((void*)0), ((void*)0) }
 };

 test_notify(searched_pathspecs, 1, expected_matched_pathspecs, 13);
}

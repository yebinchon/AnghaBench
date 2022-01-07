
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; char* member_1; } ;
typedef TYPE_1__ notify_expected ;


 int test_notify (char**,int,TYPE_1__*,int) ;

void test_diff_notify__notify_multiple_pathspec(void)
{
 char *searched_pathspecs[] = {
  "staged_changes_cant_find_me",
  "subdir/modified_cant_find_me",
  "subdir/*",
  "staged*"
 };
 notify_expected expected_matched_pathspecs[] = {
  { "staged_changes_file_deleted", "staged*" },
  { "staged_changes_modified_file", "staged*" },
  { "staged_delete_modified_file", "staged*" },
  { "staged_new_file_deleted_file", "staged*" },
  { "staged_new_file_modified_file", "staged*" },
  { "subdir/deleted_file", "subdir/*" },
  { "subdir/modified_file", "subdir/*" },
  { "subdir/new_file", "subdir/*" },
  { ((void*)0), ((void*)0) }
 };

 test_notify(searched_pathspecs, 4, expected_matched_pathspecs, 8);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; int * member_1; } ;
typedef TYPE_1__ notify_expected ;


 int test_notify (char**,int,TYPE_1__*,int) ;

void test_diff_notify__notify_catchall_with_empty_pathspecs(void)
{
 char *searched_pathspecs[] = {
  "",
  ""
 };
 notify_expected expected_matched_pathspecs[] = {
  { "file_deleted", ((void*)0) },
  { "ignored_file", ((void*)0) },
  { "modified_file", ((void*)0) },
  { "new_file", ((void*)0) },
  { "\xe8\xbf\x99", ((void*)0) },
  { "staged_changes_file_deleted", ((void*)0) },
  { "staged_changes_modified_file", ((void*)0) },
  { "staged_delete_modified_file", ((void*)0) },
  { "staged_new_file_deleted_file", ((void*)0) },
  { "staged_new_file_modified_file", ((void*)0) },
  { "subdir/deleted_file", ((void*)0) },
  { "subdir/modified_file", ((void*)0) },
  { "subdir/new_file", ((void*)0) },
  { ((void*)0), ((void*)0) }
 };

 test_notify(searched_pathspecs, 1, expected_matched_pathspecs, 13);
}

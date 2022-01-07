
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int len; int ptr; int mode; int path; int automergeable; int member_0; } ;
typedef TYPE_1__ git_merge_file_result ;
struct TYPE_9__ {char* path; int mode; int id; } ;
typedef TYPE_2__ git_index_entry ;


 int AUTOMERGEABLE_MERGED_FILE ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_assert_equal_strn (int ,int ,int ) ;
 int cl_git_pass (int ) ;
 int git_merge_file_from_index (TYPE_1__*,int ,TYPE_2__*,TYPE_2__*,TYPE_2__*,int ) ;
 int git_merge_file_result_free (TYPE_1__*) ;
 int git_oid_fromstr (int *,char*) ;
 int repo ;
 int strlen (int ) ;

void test_merge_files__automerge_from_index(void)
{
 git_merge_file_result result = {0};
 git_index_entry ancestor, ours, theirs;

 git_oid_fromstr(&ancestor.id, "6212c31dab5e482247d7977e4f0dd3601decf13b");
 ancestor.path = "automergeable.txt";
 ancestor.mode = 0100644;

 git_oid_fromstr(&ours.id, "ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf");
 ours.path = "automergeable.txt";
 ours.mode = 0100755;

 git_oid_fromstr(&theirs.id, "058541fc37114bfc1dddf6bd6bffc7fae5c2e6fe");
 theirs.path = "newname.txt";
 theirs.mode = 0100644;

 cl_git_pass(git_merge_file_from_index(&result, repo,
  &ancestor, &ours, &theirs, 0));

 cl_assert_equal_i(1, result.automergeable);

 cl_assert_equal_s("newname.txt", result.path);
 cl_assert_equal_i(0100755, result.mode);

 cl_assert_equal_i(strlen(AUTOMERGEABLE_MERGED_FILE), result.len);
 cl_assert_equal_strn(AUTOMERGEABLE_MERGED_FILE, result.ptr, result.len);

 git_merge_file_result_free(&result);
}

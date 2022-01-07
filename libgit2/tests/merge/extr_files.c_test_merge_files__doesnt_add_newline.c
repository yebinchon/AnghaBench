
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int len; int ptr; int mode; int path; int automergeable; int member_0; } ;
typedef TYPE_1__ git_merge_file_result ;
struct TYPE_13__ {int flags; } ;
typedef TYPE_2__ git_merge_file_options ;
struct TYPE_14__ {char* ptr; int size; char* path; int mode; } ;
typedef TYPE_3__ git_merge_file_input ;


 int GIT_MERGE_FILE_IGNORE_WHITESPACE_CHANGE ;
 TYPE_3__ GIT_MERGE_FILE_INPUT_INIT ;
 TYPE_2__ GIT_MERGE_FILE_OPTIONS_INIT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_assert_equal_strn (char const*,int ,int ) ;
 int cl_git_pass (int ) ;
 int git_merge_file (TYPE_1__*,TYPE_3__*,TYPE_3__*,TYPE_3__*,TYPE_2__*) ;
 int git_merge_file_result_free (TYPE_1__*) ;
 int strlen (char const*) ;

void test_merge_files__doesnt_add_newline(void)
{
 git_merge_file_input ancestor = GIT_MERGE_FILE_INPUT_INIT,
  ours = GIT_MERGE_FILE_INPUT_INIT,
  theirs = GIT_MERGE_FILE_INPUT_INIT;
 git_merge_file_options opts = GIT_MERGE_FILE_OPTIONS_INIT;
 git_merge_file_result result = {0};
 const char *expected = "Zero\n1\n2\n3\n4\n5 XXX\n6 YYY\n7\n8\n9\nTen";

 ancestor.ptr = "0\n1\n2\n3\n4\n5 XXX\n6YYY\n7\n8\n9\n10";
 ancestor.size = strlen(ancestor.ptr);
 ancestor.path = "testfile.txt";
 ancestor.mode = 0100755;

 ours.ptr = "Zero\n1\n2\n3\n4\n5 XXX\n6 YYY\n7\n8\n9\n10";
 ours.size = strlen(ours.ptr);
 ours.path = "testfile.txt";
 ours.mode = 0100755;

 theirs.ptr = "0\n1\n2\n3\n4\n5 XXX\n6  YYY\n7\n8\n9\nTen";
 theirs.size = strlen(theirs.ptr);
 theirs.path = "testfile.txt";
 theirs.mode = 0100755;

 opts.flags |= GIT_MERGE_FILE_IGNORE_WHITESPACE_CHANGE;
 cl_git_pass(git_merge_file(&result, &ancestor, &ours, &theirs, &opts));

 cl_assert_equal_i(1, result.automergeable);

 cl_assert_equal_s("testfile.txt", result.path);
 cl_assert_equal_i(0100755, result.mode);

 cl_assert_equal_i(strlen(expected), result.len);
 cl_assert_equal_strn(expected, result.ptr, result.len);

 git_merge_file_result_free(&result);
}

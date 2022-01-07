
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int automergeable; int member_0; } ;
typedef TYPE_1__ git_merge_file_result ;
struct TYPE_10__ {char* ptr; int size; char* path; int mode; } ;
typedef TYPE_2__ git_merge_file_input ;


 TYPE_2__ GIT_MERGE_FILE_INPUT_INIT ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_merge_file (TYPE_1__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,int *) ;
 int git_merge_file_result_free (TYPE_1__*) ;

void test_merge_files__skips_binaries(void)
{
 git_merge_file_input ancestor = GIT_MERGE_FILE_INPUT_INIT,
  ours = GIT_MERGE_FILE_INPUT_INIT,
  theirs = GIT_MERGE_FILE_INPUT_INIT;
 git_merge_file_result result = {0};

 ancestor.ptr = "ance\0stor\0";
 ancestor.size = 10;
 ancestor.path = "ancestor.txt";
 ancestor.mode = 0100755;

 ours.ptr = "foo\0bar\0";
 ours.size = 8;
 ours.path = "ours.txt";
 ours.mode = 0100755;

 theirs.ptr = "bar\0foo\0";
 theirs.size = 8;
 theirs.path = "theirs.txt";
 theirs.mode = 0100644;

 cl_git_pass(git_merge_file(&result, &ancestor, &ours, &theirs, ((void*)0)));

 cl_assert_equal_i(0, result.automergeable);

 git_merge_file_result_free(&result);
}

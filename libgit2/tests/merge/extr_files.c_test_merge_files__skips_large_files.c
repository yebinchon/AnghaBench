
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int automergeable; int member_0; } ;
typedef TYPE_1__ git_merge_file_result ;
typedef int git_merge_file_options ;
struct TYPE_9__ {char* path; int mode; void* size; } ;
typedef TYPE_2__ git_merge_file_input ;


 TYPE_2__ GIT_MERGE_FILE_INPUT_INIT ;
 int GIT_MERGE_FILE_OPTIONS_INIT ;
 void* GIT_XDIFF_MAX_SIZE ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_merge_file (TYPE_1__*,int *,TYPE_2__*,TYPE_2__*,int *) ;
 int git_merge_file_result_free (TYPE_1__*) ;

void test_merge_files__skips_large_files(void)
{
 git_merge_file_input ours = GIT_MERGE_FILE_INPUT_INIT,
  theirs = GIT_MERGE_FILE_INPUT_INIT;
 git_merge_file_options opts = GIT_MERGE_FILE_OPTIONS_INIT;
 git_merge_file_result result = {0};

 ours.size = GIT_XDIFF_MAX_SIZE + 1;
 ours.path = "testfile.txt";
 ours.mode = 0100755;

 theirs.size = GIT_XDIFF_MAX_SIZE + 1;
 theirs.path = "testfile.txt";
 theirs.mode = 0100755;

 cl_git_pass(git_merge_file(&result, ((void*)0), &ours, &theirs, &opts));

 cl_assert_equal_i(0, result.automergeable);

 git_merge_file_result_free(&result);
}

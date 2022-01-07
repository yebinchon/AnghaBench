
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int ptr; int len; int mode; int path; int automergeable; int member_0; } ;
typedef TYPE_1__ git_merge_file_result ;
struct TYPE_13__ {int favor; } ;
typedef TYPE_2__ git_merge_file_options ;
struct TYPE_14__ {char* ptr; int size; char* path; int mode; } ;
typedef TYPE_3__ git_merge_file_input ;


 int GIT_MERGE_FILE_FAVOR_OURS ;
 TYPE_3__ GIT_MERGE_FILE_INPUT_INIT ;
 TYPE_2__ GIT_MERGE_FILE_OPTIONS_INIT ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_merge_file (TYPE_1__*,TYPE_3__*,TYPE_3__*,TYPE_3__*,TYPE_2__*) ;
 int git_merge_file_result_free (TYPE_1__*) ;
 scalar_t__ memcmp (int ,char*,int) ;

void test_merge_files__handles_binaries_when_favored(void)
{
 git_merge_file_input ancestor = GIT_MERGE_FILE_INPUT_INIT,
  ours = GIT_MERGE_FILE_INPUT_INIT,
  theirs = GIT_MERGE_FILE_INPUT_INIT;
 git_merge_file_options opts = GIT_MERGE_FILE_OPTIONS_INIT;
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

 opts.favor = GIT_MERGE_FILE_FAVOR_OURS;
 cl_git_pass(git_merge_file(&result, &ancestor, &ours, &theirs, &opts));

 cl_assert_equal_i(1, result.automergeable);

 cl_assert_equal_s("ours.txt", result.path);
 cl_assert_equal_i(0100755, result.mode);

 cl_assert_equal_i(ours.size, result.len);
 cl_assert(memcmp(result.ptr, ours.ptr, ours.size) == 0);

 git_merge_file_result_free(&result);
}

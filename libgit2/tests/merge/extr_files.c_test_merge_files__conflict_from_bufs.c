
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int ptr; int len; int mode; int path; int automergeable; int member_0; } ;
typedef TYPE_1__ git_merge_file_result ;
struct TYPE_10__ {char* ptr; char* path; int mode; void* size; } ;
typedef TYPE_2__ git_merge_file_input ;


 TYPE_2__ GIT_MERGE_FILE_INPUT_INIT ;
 int cl_assert_equal_i (size_t,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_assert_equal_strn (char const*,int ,size_t) ;
 int cl_git_pass (int ) ;
 int git_merge_file (TYPE_1__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,int *) ;
 int git_merge_file_result_free (TYPE_1__*) ;
 void* strlen (char const*) ;

void test_merge_files__conflict_from_bufs(void)
{
 git_merge_file_input ancestor = GIT_MERGE_FILE_INPUT_INIT,
  ours = GIT_MERGE_FILE_INPUT_INIT,
  theirs = GIT_MERGE_FILE_INPUT_INIT;
 git_merge_file_result result = {0};

 const char *expected = "<<<<<<< testfile.txt\nAloha!\nOurs.\n=======\nHi!\nTheirs.\n>>>>>>> theirs.txt\n";
 size_t expected_len = strlen(expected);

 ancestor.ptr = "Hello!\nAncestor!\n";
 ancestor.size = strlen(ancestor.ptr);
 ancestor.path = "testfile.txt";
 ancestor.mode = 0100755;

 ours.ptr = "Aloha!\nOurs.\n";
 ours.size = strlen(ours.ptr);
 ours.path = "testfile.txt";
 ours.mode = 0100644;

 theirs.ptr = "Hi!\nTheirs.\n";
 theirs.size = strlen(theirs.ptr);
 theirs.path = "theirs.txt";
 theirs.mode = 0100755;

 cl_git_pass(git_merge_file(&result, &ancestor, &ours, &theirs, ((void*)0)));

 cl_assert_equal_i(0, result.automergeable);

 cl_assert_equal_s("theirs.txt", result.path);
 cl_assert_equal_i(0100644, result.mode);

 cl_assert_equal_i(expected_len, result.len);
 cl_assert_equal_strn(expected, result.ptr, expected_len);

 git_merge_file_result_free(&result);
}

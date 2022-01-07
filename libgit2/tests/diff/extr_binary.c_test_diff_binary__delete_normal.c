
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_diff_options ;


 int GIT_DIFF_OPTIONS_INIT ;
 int cl_git_sandbox_init (char*) ;
 int repo ;
 int test_patch (char*,char*,int *,char const*) ;

void test_diff_binary__delete_normal(void)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 const char *expected =
  "diff --git a/binary.bin b/binary.bin\n" "deleted file mode 100644\n" "index bd474b2..0000000\n" "Binary files a/binary.bin and /dev/null differ\n";




 repo = cl_git_sandbox_init("diff_format_email");
 test_patch(
  "897d3af16ca9e420cd071b1c4541bd2b91d04c8c",
  "873806f6f27e631eb0b23e4b56bea2bfac14a373",
  &opts,
  expected);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_diff_options ;


 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_DIFF_SHOW_BINARY ;
 int cl_git_sandbox_init (char*) ;
 int repo ;
 int test_patch (char*,char*,TYPE_1__*,char const*) ;

void test_diff_binary__modify(void)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 const char *expected =
  "diff --git a/binary.bin b/binary.bin\n" "index bd474b2519cc15eab801ff851cc7d50f0dee49a1..9ac35ff15cd8864aeafd889e4826a3150f0b06c4 100644\n" "GIT binary patch\n" "literal 5\n" "Mc${NkU}WL~000&M4gdfE\n" "\n" "literal 3\n" "Kc${Nk-~s>u4FC%O\n" "\n";
 opts.flags = GIT_DIFF_SHOW_BINARY;

 repo = cl_git_sandbox_init("diff_format_email");
 test_patch(
  "897d3af16ca9e420cd071b1c4541bd2b91d04c8c",
  "8d7523f6fcb2404257889abe0d96f093d9f524f9",
  &opts,
  expected);
}

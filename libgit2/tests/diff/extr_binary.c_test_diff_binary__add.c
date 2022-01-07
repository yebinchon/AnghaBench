
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id_abbrev; int flags; } ;
typedef TYPE_1__ git_diff_options ;


 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_DIFF_SHOW_BINARY ;
 int GIT_OID_HEXSZ ;
 int cl_git_sandbox_init (char*) ;
 int repo ;
 int test_patch (char*,char*,TYPE_1__*,char const*) ;

void test_diff_binary__add(void)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 const char *expected =
  "diff --git a/binary.bin b/binary.bin\n" "new file mode 100644\n" "index 0000000000000000000000000000000000000000..bd474b2519cc15eab801ff851cc7d50f0dee49a1\n" "GIT binary patch\n" "literal 3\n" "Kc${Nk-~s>u4FC%O\n"





  "\n" "literal 0\n" "Hc$@<O00001\n" "\n";




 opts.flags = GIT_DIFF_SHOW_BINARY;
 opts.id_abbrev = GIT_OID_HEXSZ;

 repo = cl_git_sandbox_init("diff_format_email");
 test_patch(
  "873806f6f27e631eb0b23e4b56bea2bfac14a373",
  "897d3af16ca9e420cd071b1c4541bd2b91d04c8c",
  &opts,
  expected);
}

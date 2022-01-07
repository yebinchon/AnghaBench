
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATCH_APPEND_NO_NL ;
 int verify_patch_id (int ,char*) ;

void test_diff_patchid__filename_with_spaces(void)
{
 verify_patch_id(PATCH_APPEND_NO_NL, "f0ba05413beaef743b630e796153839462ee477a");
}

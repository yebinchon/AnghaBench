
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATCH_ORIGINAL_TO_EMPTY_FILE ;
 int patch_print_from_patchfile (int ,int ) ;
 int strlen (int ) ;

void test_patch_print__to_empty_file(void)
{
 patch_print_from_patchfile(PATCH_ORIGINAL_TO_EMPTY_FILE,
  strlen(PATCH_ORIGINAL_TO_EMPTY_FILE));
}

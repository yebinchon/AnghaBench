
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATCH_EMPTY_FILE_TO_ORIGINAL ;
 int patch_print_from_patchfile (int ,int ) ;
 int strlen (int ) ;

void test_patch_print__from_empty_file(void)
{
 patch_print_from_patchfile(PATCH_EMPTY_FILE_TO_ORIGINAL,
  strlen(PATCH_EMPTY_FILE_TO_ORIGINAL));
}

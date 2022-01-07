
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATCH_ORIGINAL_TO_PREPEND_AND_APPEND ;
 int patch_print_from_patchfile (int ,int ) ;
 int strlen (int ) ;

void test_patch_print__prepend_and_append(void)
{
 patch_print_from_patchfile(PATCH_ORIGINAL_TO_PREPEND_AND_APPEND,
  strlen(PATCH_ORIGINAL_TO_PREPEND_AND_APPEND));
}

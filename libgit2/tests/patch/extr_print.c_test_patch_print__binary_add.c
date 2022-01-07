
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATCH_BINARY_ADD ;
 int patch_print_from_patchfile (int ,int ) ;
 int strlen (int ) ;

void test_patch_print__binary_add(void)
{
 patch_print_from_patchfile(PATCH_BINARY_ADD,
  strlen(PATCH_BINARY_ADD));
}

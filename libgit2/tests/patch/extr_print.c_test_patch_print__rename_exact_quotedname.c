
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATCH_RENAME_EXACT_QUOTEDNAME ;
 int patch_print_from_patchfile (int ,int ) ;
 int strlen (int ) ;

void test_patch_print__rename_exact_quotedname(void)
{
 patch_print_from_patchfile(PATCH_RENAME_EXACT_QUOTEDNAME,
  strlen(PATCH_RENAME_EXACT_QUOTEDNAME));
}

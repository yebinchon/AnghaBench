
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATCH_ORIGINAL_TO_APPEND_NOCONTEXT ;
 int patch_print_from_patchfile (int ,int ) ;
 int strlen (int ) ;

void test_patch_print__append_nocontext(void)
{
 patch_print_from_patchfile(PATCH_ORIGINAL_TO_APPEND_NOCONTEXT,
  strlen(PATCH_ORIGINAL_TO_APPEND_NOCONTEXT));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATCH_NAME_WHITESPACE ;
 int ensure_identical_patch_inout (int ) ;

void test_patch_parse__files_with_whitespaces_succeeds(void)
{
 ensure_identical_patch_inout(PATCH_NAME_WHITESPACE);
}

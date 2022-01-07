
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATCH_APPEND_NO_NL ;
 int ensure_identical_patch_inout (int ) ;

void test_patch_parse__no_newline_at_end_of_new_file(void)
{
 ensure_identical_patch_inout(PATCH_APPEND_NO_NL);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATCH_CORRUPT_MISSING_HUNK_HEADER ;
 int PATCH_CORRUPT_MISSING_NEW_FILE ;
 int PATCH_CORRUPT_MISSING_OLD_FILE ;
 int PATCH_CORRUPT_NO_CHANGES ;
 int test_parse_invalid_diff (int ) ;

void test_diff_parse__invalid_patches_fails(void)
{
 test_parse_invalid_diff(PATCH_CORRUPT_MISSING_NEW_FILE);
 test_parse_invalid_diff(PATCH_CORRUPT_MISSING_OLD_FILE);
 test_parse_invalid_diff(PATCH_CORRUPT_NO_CHANGES);
 test_parse_invalid_diff(PATCH_CORRUPT_MISSING_HUNK_HEADER);
}

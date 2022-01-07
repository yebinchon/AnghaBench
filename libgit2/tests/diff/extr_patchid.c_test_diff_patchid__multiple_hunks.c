
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATCH_MULTIPLE_HUNKS ;
 int verify_patch_id (int ,char*) ;

void test_diff_patchid__multiple_hunks(void)
{
 verify_patch_id(PATCH_MULTIPLE_HUNKS, "81e26c34643d17f521e57c483a6a637e18ba1f57");
}

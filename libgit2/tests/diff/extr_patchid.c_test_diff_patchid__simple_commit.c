
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATCH_SIMPLE_COMMIT ;
 int verify_patch_id (int ,char*) ;

void test_diff_patchid__simple_commit(void)
{
 verify_patch_id(PATCH_SIMPLE_COMMIT, "06094b1948b878b7d9ff7560b4eae672a014b0ec");
}

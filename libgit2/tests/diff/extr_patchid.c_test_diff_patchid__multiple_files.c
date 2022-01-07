
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATCH_MULTIPLE_FILES ;
 int verify_patch_id (int ,char*) ;

void test_diff_patchid__multiple_files(void)
{
 verify_patch_id(PATCH_MULTIPLE_FILES, "192d1f49d23f2004517963aecd3f8a6c467f50ff");
}

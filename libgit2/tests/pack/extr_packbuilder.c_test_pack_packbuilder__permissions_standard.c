
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_PACK_FILE_MODE ;
 int test_write_pack_permission (int ,int ) ;

void test_pack_packbuilder__permissions_standard(void)
{
 test_write_pack_permission(0, GIT_PACK_FILE_MODE);
}

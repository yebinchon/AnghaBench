
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OBJECT_DIR_MODE ;
 int GIT_OBJECT_FILE_MODE ;
 int test_write_object_permission (int ,int ,int ,int ) ;

void test_odb_loose__permissions_standard(void)
{
 test_write_object_permission(0, 0, GIT_OBJECT_DIR_MODE, GIT_OBJECT_FILE_MODE);
}

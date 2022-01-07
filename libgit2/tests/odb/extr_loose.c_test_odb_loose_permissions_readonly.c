
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_write_object_permission (int,int,int,int) ;

void test_odb_loose_permissions_readonly(void)
{
 test_write_object_permission(0777, 0444, 0777, 0444);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_write_pack_permission (int,int) ;

void test_pack_packbuilder__permissions_readonly(void)
{
 test_write_pack_permission(0444, 0444);
}

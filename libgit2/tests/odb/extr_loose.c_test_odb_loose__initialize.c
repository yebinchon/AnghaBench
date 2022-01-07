
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OBJECT_DIR_MODE ;
 int cl_must_pass (int ) ;
 scalar_t__ p_fsync__cnt ;
 int p_mkdir (char*,int ) ;

void test_odb_loose__initialize(void)
{
 p_fsync__cnt = 0;
 cl_must_pass(p_mkdir("test-objects", GIT_OBJECT_DIR_MODE));
}

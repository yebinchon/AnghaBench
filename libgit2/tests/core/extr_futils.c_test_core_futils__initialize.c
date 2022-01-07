
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_must_pass (int ) ;
 int p_mkdir (char*,int) ;

void test_core_futils__initialize(void)
{
 cl_must_pass(p_mkdir("futils", 0777));
}

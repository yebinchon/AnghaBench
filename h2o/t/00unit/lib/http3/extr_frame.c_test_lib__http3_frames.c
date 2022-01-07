
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subtest (char*,int ) ;
 int test_priority ;

void test_lib__http3_frames(void)
{
    subtest("priority", test_priority);
}

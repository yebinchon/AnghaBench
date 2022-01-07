
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIXTURE_DIR ;
 int cl_fixture_cleanup (int ) ;

void test_core_sha1__cleanup(void)
{
 cl_fixture_cleanup(FIXTURE_DIR);
}

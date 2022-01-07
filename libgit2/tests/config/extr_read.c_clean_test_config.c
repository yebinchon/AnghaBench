
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_UNUSED (void*) ;
 int cl_fixture_cleanup (char*) ;

__attribute__((used)) static void clean_test_config(void *unused)
{
 GIT_UNUSED(unused);
 cl_fixture_cleanup("./testconfig");
}

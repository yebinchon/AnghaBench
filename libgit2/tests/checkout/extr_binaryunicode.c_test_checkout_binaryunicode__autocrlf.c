
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_repo_set_bool (int ,char*,int) ;
 int execute_test () ;
 int g_repo ;

void test_checkout_binaryunicode__autocrlf(void)
{
 cl_repo_set_bool(g_repo, "core.autocrlf", 1);
 execute_test();
}

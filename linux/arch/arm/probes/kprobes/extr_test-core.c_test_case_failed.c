
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_title ;
 int pr_err (char*,...) ;
 int test_case_cleanup () ;
 int test_case_run_count ;

__attribute__((used)) static void test_case_failed(const char *message)
{
 test_case_cleanup();

 pr_err("FAIL: %s\n", message);
 pr_err("FAIL: Test %s\n", current_title);
 pr_err("FAIL: Scenario %d\n", test_case_run_count >> 1);
}

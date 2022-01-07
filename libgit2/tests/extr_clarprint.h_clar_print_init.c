
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void clar_print_init(int test_count, int suite_count, const char *suite_names)
{
 (void)test_count;
 printf("Loaded %d suites: %s\n", (int)suite_count, suite_names);
 printf("Started (test status codes: OK='.' FAILURE='F' SKIPPED='S')\n");
}

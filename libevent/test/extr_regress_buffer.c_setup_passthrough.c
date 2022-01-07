
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testcase_t {void* setup_data; } ;



__attribute__((used)) static void *
setup_passthrough(const struct testcase_t *testcase)
{
 return testcase->setup_data;
}

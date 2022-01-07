
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int workdir_iterator_test (char*,char*,char*,int ,int ,int *,int *) ;

void test_iterator_workdir__1_ranged_empty_1(void)
{
 workdir_iterator_test(
  "status", "empty", "empty",
  0, 0, ((void*)0), ((void*)0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int workdir_iterator_test (char*,int *,char*,int ,int ,int *,int *) ;

void test_iterator_workdir__1_ranged_empty_2(void)
{
 workdir_iterator_test(
  "status", ((void*)0), "aaaa_empty_before",
  0, 0, ((void*)0), ((void*)0));
}

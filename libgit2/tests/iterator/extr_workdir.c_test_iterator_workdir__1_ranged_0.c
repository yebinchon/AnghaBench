
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int status_paths_range_0 ;
 int workdir_iterator_test (char*,char*,char*,int,int ,int ,int *) ;

void test_iterator_workdir__1_ranged_0(void)
{
 workdir_iterator_test(
  "status", "staged", "staged", 5, 0, status_paths_range_0, ((void*)0));
}

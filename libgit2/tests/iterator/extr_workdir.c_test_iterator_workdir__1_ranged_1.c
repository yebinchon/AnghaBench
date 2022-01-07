
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int status_paths_range_1 ;
 int workdir_iterator_test (char*,char*,char*,int,int ,int ,int *) ;

void test_iterator_workdir__1_ranged_1(void)
{
 workdir_iterator_test(
  "status", "modified_file", "modified_file",
  1, 0, status_paths_range_1, ((void*)0));
}

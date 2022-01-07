
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int status_paths ;
 int workdir_iterator_test (char*,int *,int *,int,int,int ,char*) ;

void test_iterator_workdir__1(void)
{
 workdir_iterator_test(
  "status", ((void*)0), ((void*)0), 13, 1, status_paths, "ignored_file");
}

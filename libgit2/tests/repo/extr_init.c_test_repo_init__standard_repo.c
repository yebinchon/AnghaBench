
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_repository ;
 int ensure_repository_init (char*,int ,char*,char*) ;

void test_repo_init__standard_repo(void)
{
 cl_set_cleanup(&cleanup_repository, "testrepo");
 ensure_repository_init("testrepo/", 0, "testrepo/.git/", "testrepo/");
}

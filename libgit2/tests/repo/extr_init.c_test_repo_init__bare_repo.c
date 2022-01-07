
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_repository ;
 int ensure_repository_init (char*,int,char*,int *) ;

void test_repo_init__bare_repo(void)
{
 cl_set_cleanup(&cleanup_repository, "testrepo.git");
 ensure_repository_init("testrepo.git/", 1, "testrepo.git/", ((void*)0));
}

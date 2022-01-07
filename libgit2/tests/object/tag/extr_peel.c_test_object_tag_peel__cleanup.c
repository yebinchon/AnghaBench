
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture_cleanup (char*) ;
 int git_object_free (int *) ;
 int git_repository_free (int *) ;
 int git_tag_free (int *) ;
 int * repo ;
 int * tag ;
 int * target ;

void test_object_tag_peel__cleanup(void)
{
 git_tag_free(tag);
 tag = ((void*)0);

 git_object_free(target);
 target = ((void*)0);

 git_repository_free(repo);
 repo = ((void*)0);

 cl_fixture_cleanup("testrepo.git");
}

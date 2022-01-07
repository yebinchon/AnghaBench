
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _repo ;
 int cl_fixture_cleanup (char const*) ;
 int git_repository_free (int *) ;

__attribute__((used)) static void cleanup_repository(void *path)
{
 git_repository_free(_repo);
 _repo = ((void*)0);

 cl_fixture_cleanup((const char *)path);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_thread ;


 int REPEAT ;
 int THREADCOUNT ;
 int* cache_quick (int*) ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int * g_repo ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;
 int git_thread_create (int *,int* (*) (int*),int*) ;
 int git_thread_join (int *,void**) ;

void test_object_cache__fast_thread_rush(void)
{
 int try, th, data[THREADCOUNT*2];




 for (try = 0; try < REPEAT; ++try) {
  cl_git_pass(git_repository_open(&g_repo, cl_fixture("testrepo.git")));

  for (th = 0; th < THREADCOUNT*2; ++th) {
   data[th] = th;




   cl_assert(cache_quick(&data[th]) == &data[th]);

  }
  git_repository_free(g_repo);
  g_repo = ((void*)0);
 }
}

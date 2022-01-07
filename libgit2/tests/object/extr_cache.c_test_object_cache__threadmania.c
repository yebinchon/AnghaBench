
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_thread ;
struct TYPE_2__ {int * sha; } ;


 int REPEAT ;
 int THREADCOUNT ;
 void* cache_parsed (void*) ;
 void* cache_raw (void*) ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 TYPE_1__* g_data ;
 int * g_repo ;
 int git__free (void*) ;
 void* git__malloc (int) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;
 int git_thread_create (int *,void* (*) (void*),void*) ;
 int git_thread_join (int *,void**) ;

void test_object_cache__threadmania(void)
{
 int try, th, max_i;
 void *data;
 void *(*fn)(void *);





 for (max_i = 0; g_data[max_i].sha != ((void*)0); ++max_i)
                ;

 for (try = 0; try < REPEAT; ++try) {

  cl_git_pass(git_repository_open(&g_repo, cl_fixture("testrepo.git")));

  for (th = 0; th < THREADCOUNT; ++th) {
   data = git__malloc(2 * sizeof(int));

   ((int *)data)[0] = th;
   ((int *)data)[1] = th % max_i;

   fn = (th & 1) ? cache_parsed : cache_raw;




   cl_assert(fn(data) == data);
   git__free(data);

  }
  git_repository_free(g_repo);
  g_repo = ((void*)0);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_pool ;


 int cl_assert (int) ;
 int git_pool__ptr_in_pool (int *,int*) ;
 int git_pool_clear (int *) ;
 int git_pool_init (int *,int) ;
 void* git_pool_malloc (int *,int) ;

void test_core_pool__0(void)
{
 int i;
 git_pool p;
 void *ptr;

 git_pool_init(&p, 1);

 for (i = 1; i < 10000; i *= 2) {
  ptr = git_pool_malloc(&p, i);
  cl_assert(ptr != ((void*)0));
  cl_assert(git_pool__ptr_in_pool(&p, ptr));
  cl_assert(!git_pool__ptr_in_pool(&p, &i));
 }

 git_pool_clear(&p);
}

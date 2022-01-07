
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_pool ;


 int cl_assert (int ) ;
 int git_pool_clear (int *) ;
 int git_pool_init (int *,int) ;
 int * git_pool_strndup (int *,char*,size_t) ;

void test_core_pool__strndup_limit(void)
{
 git_pool p;

 git_pool_init(&p, 1);

 cl_assert(git_pool_strndup(&p, "foo", (size_t)-1) == ((void*)0));
 git_pool_clear(&p);
}

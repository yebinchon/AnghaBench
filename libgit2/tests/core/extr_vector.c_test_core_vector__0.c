
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_vector ;


 int git_vector_free (int *) ;
 int git_vector_init (int *,int,int *) ;
 int git_vector_insert (int *,void*) ;

void test_core_vector__0(void)
{
 git_vector x;
 int i;
 git_vector_init(&x, 1, ((void*)0));
 for (i = 0; i < 10; ++i) {
  git_vector_insert(&x, (void*) 0xabc);
 }
 git_vector_free(&x);
}
